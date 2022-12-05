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
        assert(abs(val)==1), f'Value for scan loop can only be -1, or 1 not {val} for {self._loop_num}'

        instr = [f'\tmovq $0, %rsi',     # compare with 0 in 2nd arg
                 f'\tmovq %rax, %rdi',   # move curr ptr as start dest for 1st arg
                 f'\tlea buffer(%rip), %r8',   # move start address to rdi
                 ]
        if val < 0: # calc dist until start of buffer
            instr.extend([  f'\tsubq %r8, %rax',    # calc dist from start to curr
                            f'\tmovq 1(%rax), %rdx',   # pass (dist+1) as 3rd arg taking curr ptr into account
                            f'\tcallq memrchr',     # this would update the next free ptr in rax
                            ])
        else:       # calc dist until end of buffer
            instr.extend([  f'\tmovq {self.__buff_size}(%r8), %rcx',   # calc last buff addr
                            f'\tsubq %rax, %rcx',   # calc remaining dist to end
                            f'\tmovq 1(%rcx), %rdx',   # pass (dist+1) as 3rd arg to take into account curr ptr
                            f'\tcallq memchr',      # this would update the next free ptr in rax
                            ])
        return instr

    def simplify_loop(self, instr_set : List[BFInstruction]) -> list:
        """ Replace simplifiable loop with straight assignment """
        new_instr = [f'\tmovq (%rax), %r11',]   # n -> r11
        for instr in instr_set:
            # In this architecture, simplifiable loop cannot have non-Incr instr
            if not isinstance(instr, BFIncrement):
                raise RuntimeError(f"Simplifiable loop cannot have non-incr instr {instr} in {self._loop_num}")
            increment = instr.value
            ptr = instr.ptr
            if increment >= 0: op = "addq"   # if incr then add val at the ptr
            else: op = "subq"               # if decr then sub val at the ptr 
            new_instr.extend([f'\tmovq ${abs(increment)}, %r10', # |x_i| -> r10
                              f'\tpushq %rax',              # save rax
                              f'\tmovzbq %r11b, %rax',      # n -> rax
                              f'\timulq %r10',              # |x_i*n| -> rax
                              f'\tmovzbq %al, %r10',        # store byte res in r10
                              f'\tpopq %rax',
                              f'\t{op} %r10, {ptr}(%rax)',  # store final byte val at data ptr
                            ])            
        return new_instr

    # --------------------------------------------------------------------
    # Global proc helper

    def start_proc(self) -> list:
        """ Adds initial commands when proc is entered """
        # We use rax as the data pointer temporary
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
        return [f'.main.Lexit:',
                f'\tmovq $0, %rax',     # nullify any output
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
        self.__create_asm(self.__instrs.block)      # convert brainfuck to asm
        self.__asm[:0] = self.__stack.start_proc()  # add initial instr when entering prog
        self.__asm.extend(self.__stack.end_proc())  # add final instr when exiting proc

    # --------------------------------------------------------------------
    # converts the brainfuck instr classes to asm

    def __create_asm(self, instr_set) -> None:
        """ Translates parsed code into ASM """
        for instr in instr_set:
            if isinstance(instr, BFLoop):
                loop_count = instr.id
                self.__stack.add_new_loop()
                if instr.inf:   # if infinite loop then call memchr/memrchr
                    simplified_loop = self.__stack.scan_loop(instr.body.block)
                    self.__asm.extend(simplified_loop)
                    continue
                if instr.simplifiable:  # if simplifiable loop then do it
                    simplified_loop = self.__stack.simplify_loop(instr.body.block)
                    self.__asm.extend(simplified_loop)
                    continue
                self.__asm.extend([f'\n.main.Loop{loop_count}:',
                                    f'\tcmpb $0, (%rax)',
                                    f'\tjz .main.Loop{loop_count}.exit',
                                    ])
                self.__create_asm(instr.body.block)   # create loop instr before exiting
                self.__asm.extend([f'\tjmp .main.Loop{loop_count}',
                                    f'.main.Loop{loop_count}.exit:\n',
                                    ])

            else:   # call class methods directly
                self.__asm.extend(instr.asm_instr())

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

    fname = fname[:-3]      # Save assembly code and create executable
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
