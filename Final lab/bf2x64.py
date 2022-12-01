from brainfuck import *
from typing import Dict

# ---------------------------------------------------------------------#
# Class to handle Stack
# ---------------------------------------------------------------------#

class Stack:
    def __init__(self, proc_args: list) -> None:
        self.__temp_map: Dict[str, str] = dict()
        self.__proc_args: List[str] = proc_args
        self.__proc_args_num: int = len(self.__proc_args)

    def get_item(self, temp: str) -> str:
        """ Return the stack address of the temp """
        # if globl var then ret rip relative position
        # print(temp)
        return self.__lookup_temp(temp)
    
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
        return [f'\n',
                f'\t.text',
                f'\t.globl main',
                f'main:',
                f'\tpushq %rbp',
                f'\tmovq %rsp, %rbp',
                f'\tsubq ${8*stack_size}, %rsp']

    def end_proc(self) -> list:
        """ Adds final commands to end the proc """
        # Reset the base pointer to the stack pointer
        return [f'.main.Lexit:',
                f'\tmovq %rbp, %rsp',
                f'\tpopq %rbp',
                f'\tretq\n']

# ---------------------------------------------------------------------#
# Class for asm instr conversion
# ---------------------------------------------------------------------#

class x64ASM:
    def __init__(self, instr: BFBlock) -> None:
        self.__instrs: BFBlock = instr
        self.__asm: List[str]
        self.__stack: Stack = Stack()
        self.__create_asm()

    def __create_asm(self) -> None:
        """ Translates parsed code into ASM """

        for instr in self.__instrs:
            if isinstance(instr, BFIncrement):
                increment = BFIncrement.get_value()
                self.__asm.extend([f'\tmovq {arg1}, %r11',
                                    f'\taddq {increment}, %r11',
                                    f'\tmovq %r11, {result}'])


            if isinstance(instr, BFDecrement):
                decrement = BFDecrement.get_value()
                self.__asm.extend([f'\tmovq {arg1}, %r11',
                                    f'\tsubq {decrement}, %r11',
                                    f'\tmovq %r11, {result}'])


            if isinstance(instr, BFForward):
                decrement = BFDecrement.get_value()
                self.__asm.extend([f'\tmovq {arg1}, %r11',
                                    f'\taddq {decrement}, %r11',
                                    f'\tmovq %r11, {result}'])

            if isinstance(instr, BFBackward):
                decrement = BFDecrement.get_value()
                self.__asm.extend([f'\tmovq {arg1}, %r11',
                                    f'\taddq {decrement}, %r11',
                                    f'\tmovq %r11, {result}'])

            if isinstance(instr, BFPrint):
                decrement = BFDecrement.get_value()
                self.__asm.extend([f'\tcallq __bf_print'])

            if isinstance(instr, BFInput):
                decrement = BFDecrement.get_value()
                self.__asm.extend([f'\tcallq __bf_get'])
                self.__asm.extend([f'\tmovq %rax, {self.__stack}'])

            if isinstance(instr, BFLoop):
                decrement = BFDecrement.get_value()

# --------------------------------------------------------------------
def _main():
    if len(sys.argv)-1 != 1:
        print(f'Usage: {sys.argv[0]} [FILE.bf]', file = sys.stderr)
        exit(1)

    program = parse_program(sys.argv[1])



# --------------------------------------------------------------------
if __name__ == '__main__':
    _main()
