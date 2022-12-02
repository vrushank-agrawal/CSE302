from brainfuck import *
from typing import Dict

# ---------------------------------------------------------------------#
# Class to handle Stack
# ---------------------------------------------------------------------#

class Stack:
    def __init__(self) -> None:
        self.__temp_map: Dict[str, str] = dict()
        self.__loop_num: int = 0

    def get_item(self, temp: str) -> str:
        """ Return the stack address of the temp """
        # if globl var then ret rip relative position
        # print(temp)
        return self.__lookup_temp(temp)

    get_loop : int = property(lambda self : self.__loop_num)
    # def get_loop(self) -> int:
    #     """ Returns the curr nb of loops """
    #     return self.__loop_num

    # incr_loop : None = property(lambda self : self.__loop_num+=1)
    def incr_loop(self) -> None:
        """ Adds a new loop """
        self.__loop_num += 1

    def __lookup_temp(self, temp: str) -> str:
        """ Returns the value of the temp from the stack 
            while simultaneously creating a hash table """
        # if temporary already exists return its value
        if temp in self.__temp_map:
            return self.__temp_map[temp]
        # add a new destination for it considering there is one address for rsp
        else:
            self.__temp_map[temp] = f'{-8 * (len(self.__temp_map)+1)}(%rbp)'
        return self.__temp_map[temp]

    def start_proc(self) -> list:
        """ Adds initial commands when proc is entered """
        # set the stack size to the number of temporaries we need
        stack_size = len(self.__temp_map)
        stack_size += 1 if (stack_size % 2 != 0) else 0
        return [
                f'\t.bss',
                f'buffer:',
                f'\t.zero 30000',
                '\n',
                f'\t.text',
                f'\t.globl main',
                f'main:',
                f'\tpushq %rbp',
                f'\tmovq %rsp, %rbp',
                # f'\tsubq ${8*stack_size}, %rsp',
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
        self.__asm: List[str]
        self.__stack: Stack = Stack()
        self.__create_asm(self.__instrs.block)    # create asm with main instr

    def __create_asm(self, instr_set) -> None:
        """ Translates parsed code into ASM """

        for instr in instr_set:
            if isinstance(instr, BFIncrement):
                increment = instr.get_value()
                self.__asm.extend([#f'\tmovq {arg1}, %r11',
                                    f'\taddq {increment}, (%r11)',
                                    #f'\tmovq %r11, {result}'
                                    ])

            if isinstance(instr, BFDecrement):
                decrement = instr.get_value()
                self.__asm.extend([ #f'\tmovq {arg1}, %r11',
                                    f'\tsubq {decrement}, %(r11)',
                                    #f'\tmovq %r11, {result}'
                                    ])

            if isinstance(instr, BFForward):
                forward = instr.get_value()
                self.__asm.extend([#f'\tmovq {arg1}, %r11',
                                    f'\taddq {forward}, %r11',
                                    #f'\tmovq %r11, {result}'
                                    ])

            if isinstance(instr, BFBackward):
                back = instr.get_value()
                self.__asm.extend([#f'\tmovq {arg1}, %r11',
                                    f'\taddq {back}, %r11',
                                    #f'\tmovq %r11, {result}'
                                    ])

            if isinstance(instr, BFPrint):
                # move first and only arg to 1st arg reg rdi
                self.__asm.extend([f'\tmovb (%r11b), %dil',
                                    f'\tpushq %r11',
                                    f'\tcallq __bf_print',
                                    f'\tpopq %r11',
                                    ])

            if isinstance(instr, BFInput):
                self.__asm.extend([f'\tcallq __bf_get'])
                self.__asm.extend([f'\tmovq %rax, %r11'])

            if isinstance(instr, BFLoop):
                loop_count = self.__stack.get_loop
                self.__stack.incr_loop()
                self.__asm.extend([f'.main.Loop{loop_count}',                                    f'\tpushq %r11',
                                    f'\tcmpb $0, (%r11b)',
                                    f'\tjz .main.Loop{loop_count}.exit',
                                    ])
                self.__create_asm(instr.body)   # create loop instr before exiting
                self.__asm.extend([f'\tjmp .main.Loop{loop_count}',
                                    f'.main.Loop{loop_count}.exit',
                                    ])

# --------------------------------------------------------------------

def main():
    """ Program entry point """
    if len(sys.argv)-1 != 1:
        print(f'Usage: {sys.argv[0]} [FILE.bf]', file = sys.stderr)
        exit(1)

    program = parse_program(sys.argv[1])

    asm = x64ASM(program)

# --------------------------------------------------------------------
if __name__ == '__main__':
    main()
