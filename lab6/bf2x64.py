from parser_bf import *
from optimize import Optimizer, Macros

# ---------------------------------------------------------------------#
# Class to handle Stack
# ---------------------------------------------------------------------#

class Stack:
    def __init__(self) -> None:
        self._loop_num: int = 0

    get_loop : int = property(lambda self : self._loop_num)

    def incr_loop(self) -> None:
        """ Adds a new loop """
        self._loop_num += 1

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
        self.__loop_counter = 0
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
        # print(self.__loop_counter)
        # self.__loop_counter += 1
        # print(instr_set[0])
        # print(type(instr_set[0]))
        # print(type(instr_set))

        for instr in instr_set:
            if isinstance(instr, BFIncrement):
                increment = instr.value
                self.__asm.extend([f'\taddq ${increment}, (%rax)',])

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
                self.__stack.incr_loop()
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
    asm = x64ASM(optimizer.block).asm     # store asm instr

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
