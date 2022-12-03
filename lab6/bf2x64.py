from parser_bf import *
from optimize import Optimizer

# ---------------------------------------------------------------------#
# Class to handle Stack
# ---------------------------------------------------------------------#

class Stack:
    def __init__(self) -> None:
        self._loop_num: int = 0

    get_loop : int = property(lambda self : self._loop_num)

    # --------------------------------------------------------------------
    # Loop helpers

    def add_new_loop(self) -> None:
        """ Adds a new loop counter for global program """
        self._loop_num += 1

    def scan_loop(self) -> list:
        """ Aux function to access memchr and memrchr for inf loop """

    def simplify_loop(self, instr_set : List[BFInstruction]) -> list:
        """ Replace simplifiable loop with straight assignment """
        new_instr = [f'\tmovb (%rax), %r11',]
        for instr in instr_set:
            # In this architecture, simplifiable loop cannot have non-incr instr
            if not isinstance(instr, BFIncrement):
                raise RuntimeError(f"Simplifiable loop cannot have non-incr instr {instr}")
            increment = instr.value
            ptr = instr.ptr
            new_instr.extend([f'\tmovb {increment}, %r8',
                              f'\tpushq %rax',
                              f'\tmovb %r11, %rax',
                              f'\timulb %r8',
                              f'\tmovb %rax, %r8',
                              f'\tpopq %rax',
                              f'\tmovq %r8, {ptr}(%rax)',
                              ])
        return new_instr

    # --------------------------------------------------------------------
    # Global proc helper

    def start_proc(self) -> list:
        """ Adds initial commands when proc is entered """
        # We use rax as the temporary to
        return [f'\t.bss',
                f'buffer:',
                f'\t.zero 30000',
                '',
                f'\t.text',
                f'\t.globl main',
                f'main:',
                f'\tpushq %rbp',
                f'\tpushq %rax',
                f'\tmovq %rsp, %rbp',
                f'\tlea buffer(%rip), %rax',
                ]

    def end_proc(self) -> list:
        """ Adds final commands to end the proc """
        # Reset the base pointer to the stack pointer
        return [f'.main.Lexit:',
                f'\txorq %rax, %rax',   # nullify any output
                f'\tmovq %rbp, %rsp',   # restore rsp
                f'\tpopq %rbp',         # restore rbp
                f'\tpopq %rax',         # restore rax
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
                self.__asm.extend([f'\taddq ${increment}, {ptr}(%rax)',])

            if isinstance(instr, BFPointer):
                forward = instr.value
                self.__asm.extend([f'\taddq ${forward}, %rax',])

            if isinstance(instr, BFPrint):
                # move first and only arg to last byte in rdi
                self.__asm.extend([f'\tmovb (%rax), %dil',
                                    f'\tpushq %rax',
                                    f'\tcallq __bf_print',
                                    f'\tpopq %rax',
                                    ])

            if isinstance(instr, BFInput):
                self.__asm.extend([f'\tpushq %rax',
                                    f'\tcallq __bf_get',
                                    f'\tmovq %rax, %r11',
                                    f'\tpopq %rax',
                                    f'\tmovb %r11b, (%rax)',
                                    ])

            if isinstance(instr, BFLoop):
                loop_count = self.__stack.get_loop
                if instr.inf:
                    print("Inf loop found")
                if instr.simplifiable:
                    # self.__stack.simplify_loop(instr.body.block)
                    # continue
                    pass
                self.__stack.add_new_loop()
                self.__asm.extend([f'\n.main.Loop{loop_count}:',                                    f'\tpushq %rax',
                                    f'\tcmpb $0, (%rax)',
                                    f'\tjz .main.Loop{loop_count}.exit',
                                    ])
                self.__create_asm(instr.body.block)   # create loop instr before exiting
                self.__asm.extend([f'\tjmp .main.Loop{loop_count}',
                                    f'.main.Loop{loop_count}.exit:\n',
                                    ])

# --------------------------------------------------------------------

def main():
    """ Program entry point """
    if len(sys.argv)-1 != 1:
        print(f'Usage: {sys.argv[0]} [FILE.bf]', file = sys.stderr)
        exit(1)

    fname : str = sys.argv[1]
    assert(fname.endswith(".bf")), "Illegal file format passed"
    program = parse_program(fname)
    optimizer = Optimizer(program)
    program = optimizer.block
    asm = x64ASM(program).asm     # store asm instr

    # Save assembly code and create executable
    fname = fname[:-3]
    exe_name = fname + '.exe'
    asm_name = fname + '.s'
    with open(asm_name, 'w') as afp:
        instr = "\n".join(asm)
        afp.write(instr)

    import os
    os.system(f'gcc -o {exe_name} {asm_name} helper_func.c')
    print(f"Assembly created for {fname}")

# --------------------------------------------------------------------
if __name__ == '__main__':
    main()
