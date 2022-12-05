from parser_bf import *
from optimize import Optimizer

# ---------------------------------------------------------------------#
# Class to handle Stack
# ---------------------------------------------------------------------#

class Stack:
    def __init__(self) -> None:
        self._loop_num: int = 0
        self.__buff_size : int = 30000

    get_loop : int = property(lambda self : self._loop_num)

    # --------------------------------------------------------------------
    # Loop helpers

    def add_new_loop(self) -> None:
        """ Adds a new loop counter for global program """
        self._loop_num += 1

    def scan_loop(self, val: int) -> list:
        """ Aux function to access memchr and memrchr for inf loop """
        # this is how instr should look in my opinion
        assert(abs(val)==1), f'Value for scan loop can only be -1, or 1 not {val} for {self._loop_num}'
        instr = [# f'\tpushq %rax',
                 f'\tmovq $0, %rsi',     # compare with 0 in 2nd arg
                 f'\tmovq %rax, %rdi',   # move curr ptr as start dest for 1st arg
                 f'\tlea buffer(%rip), %r8',   # move start address to rdi
                 ]
        if val < 0: # calc dist until start of buffer
            instr.extend([  f'\tsubq %r8, %rax',   # calc dist from start to curr
                            f'\tmovq %rax, %rdx',   # pass that as 3rd arg
                            f'\tcallq memrchr',      # this would update the next free ptr in rax
                            ])
        else:       # calc dist until end of buffer
            instr.extend([  f'\tmovq {self.__buff_size}(%r8), %rcx',   # calc last buff addr
                            f'\tsubq %rax, %rcx',   # calc remaining dist to end
                            f'\tmovq %rcx, %rdx',   # pass that as 3rd arg
                            f'\tcallq memchr',      # this would update the next free ptr in rax
                            ])
        instr.extend([  
                      # f'\tmovb (%rax), %r11',
                      # f'\tpopq %rax',
                        ])

        return instr

    def simplify_loop(self, instr_set : List[BFInstruction]) -> list:
        """ Replace simplifiable loop with straight assignment """
        new_instr = [f'\tmovzbq (%rax), %r11',]   # n -> r11
        for instr in instr_set:
            # In this architecture, simplifiable loop cannot have non-incr instr
            if not isinstance(instr, BFIncrement):
                raise RuntimeError(f"Simplifiable loop cannot have non-incr instr {instr} in {self._loop_num}")
            increment = instr.value
            ptr = instr.ptr
            new_instr.extend([f'\tmovb {increment}, %r8b',  # x_i -> r8 
                              f'\tpushq %rax',              # save rax
                              f'\tmovb %r11b, %al',         # n -> rax
                              f'\timulq %r8',               # x_i*n -> rax
                              f'\tmovb %al, %r8b',          # store byte res in r8
                              f'\tpopq %rax',
                              f'\taddq {ptr}(%rax), %r8',   # x_i*n + c_i -> r8
                              f'\tmovb %r8b, {ptr}(%rax)',  # store final byte val at data ptr
                              ])
        return new_instr

    # --------------------------------------------------------------------
    # Global proc helper

    def start_proc(self) -> list:
        """ Adds initial commands when proc is entered """
        # We use rax as the temporary to
        return [f'\t.bss',
                f'buffer:',
                f'\t.zero {self.__buff_size}',
                '',
                f'\t.text',
                f'\t.globl main',
                f'main:',
                f'\tpushq %rbp',
                f'\tmovq %rsp, %rbp',
                f'\tleaq buffer(%rip), %rax',
                ]

    def end_proc(self) -> list:
        """ Adds final commands to end the proc """
        # Reset the base pointer to the stack pointer
        return [f'.main.Lexit:',
                f'\txorq %rax, %rax',   # nullify any output
                f'\tmovq %rbp, %rsp',   # restore rsp
                f'\tpopq %rbp',         # restore rbp
                f'\tretq\n']

# ---------------------------------------------------------------------#
# Class for asm instr conversion
# ---------------------------------------------------------------------#

class x64ASM:
    def __init__(self, instr: BFBlock) -> None:
        self.__instrs: BFBlock = instr
        self.__asm: List[str] = list()
        self.__stack: Stack = Stack()
        self.create_proc()    # create asm with main instr

    asm : List[str] = property(lambda self: self.__asm)

    def create_proc(self) -> None:
        """ Adds start and end proc asm code """
        # convert brainfuck to asm
        self.__create_asm(self.__instrs.block)    # create asm with main instr
        # add initial instr when entering prog
        self.__asm[:0] = self.__stack.start_proc()
        # add final instr when exiting proc
        self.__asm.extend(self.__stack.end_proc())

    # --------------------------------------------------------------------
    # converts the brainfuck instr classes to asm

    def __create_asm(self, instr_set) -> None:
        """ Translates parsed code into ASM """
        for instr in instr_set:
            if isinstance(instr, BFIncrement):
                increment = instr.value
                ptr = instr.ptr
                self.__asm.extend([f'\taddb ${increment}, {ptr}(%rax)',])

            if isinstance(instr, BFPointer):
                forward = instr.value
                self.__asm.extend([f'\taddq ${forward}, %rax',])

            if isinstance(instr, BFPrint):
                # move first and only arg to last byte in rdi
                self.__asm.extend([f'\tmovzbq (%rax), %rdi',
                                    f'\tpushq %rax',
                                    f'\tcallq __bf_print',
                                    f'\tpopq %rax',
                                    ])

            if isinstance(instr, BFInput):
                self.__asm.extend([f'\tpushq %rax',
                                    f'\tcallq __bf_get',
                                    f'\tmovzbq %al, %r11',
                                    f'\tpopq %rax',
                                    f'\tmovb %r11b, (%rax)',
                                    ])

            if isinstance(instr, BFLoop):
                loop_count = instr.id
                self.__stack.add_new_loop()
                if instr.inf:
                    simplified_loop = self.__stack.scan_loop(instr.body.block)
                    self.__asm.extend(simplified_loop)
                    continue
                    # print("Inf loop found")
                    pass
                if instr.simplifiable:
                    simplified_loop = self.__stack.simplify_loop(instr.body.block)
                    self.__asm.extend(simplified_loop)
                    continue
                    # print("simplifiable loop found")
                    # print(str(instr.simplifiable))
                    pass
                self.__asm.extend([f'\n.main.Loop{loop_count}:',
                                    f'\tcmpb $0, (%rax)',
                                    f'\tjz .main.Loop{loop_count}.exit',
                                    ])
                self.__create_asm(instr.body.block)   # create loop instr before exiting
                self.__asm.extend([f'\tjmp .main.Loop{loop_count}',
                                    f'.main.Loop{loop_count}.exit:\n',
                                    ])

# --------------------------------------------------------------------
import argparse

def main():
    """ Program entry point """
    if len(sys.argv)-1 < 1:
        print(f'Usage: {sys.argv[0]} [FILE.bf] -o [options] [.s FILE]', file = sys.stderr)
        exit(1)
    parse = argparse.ArgumentParser(description='Brainfuck Compiler')
    parse.add_argument('filename', metavar="FILE", type=str, nargs=1)
    parse.add_argument('-e', dest='executable', action='store_true', default=False,
                        help="Creates executable")
    parse.add_argument('-o', dest='output', type=str,
                        help='Write output to this file')
    args = parse.parse_args(sys.argv[1:])

    fname : str = args.filename[0]
    assert(fname.endswith(".bf")), "Illegal file format passed"
    program = parse_program(fname)
    optimizer = Optimizer(program)
    program = optimizer.block
    asm = x64ASM(program).asm     # store asm instr

    # Save assembly code and create executable
    fname = fname[:-3]
    exe_name = fname + '.exe'
    asm_name = fname + '.s'
    instr = "\n".join(asm)
    if args.output:
        with open(args.output, 'w') as afp:
            afp.write(instr)

    if args.executable: # for me
        import os
        with open(asm_name, 'w') as afp:
            afp.write(instr)
        os.system(f'gcc -g -o {exe_name} {asm_name} helper_func.c')
        print(f"Assembly created for {fname}")
    else:       # for submission
        print("-----------asm----------\n")
        print(instr)

# --------------------------------------------------------------------
if __name__ == '__main__':
    main()
