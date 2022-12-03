#! /usr/bin/env python3

# --------------------------------------------------------------------
import abc
import sys
# from optimization import optimize4
from typing import List

# --------------------------------------------------------------------
class BFError(Exception):    
    def __str__(self) -> None:
        print("something")
    
# --------------------------------------------------------------------
class BFExit(Exception):
    def __init__(self) -> None:
        exit(0)

# --------------------------------------------------------------------
class BFMemory:
    def __init__(self, memsize = 30000):
        self._memory = [0] * max(memsize, 1)
        self._ptr    = 0

    position = property(lambda self : self._ptr)

    def get(self):
        return self._memory[self._ptr]

    def set(self, value):
        self._memory[self._ptr] = int(value) & 0xff

    def increment(self):
        self.set(self.get() + 1)

    def decrement(self):
        self.set(self.get() - 1)

    def forward(self):
        self._ptr = (self._ptr + 1) % len(self._memory)

    def backward(self):
        self._ptr = (self._ptr - 1) % len(self._memory)

    def dump(self):
        import hexdump
        hexdump.hexdump(bytes(self._memory))

# --------------------------------------------------------------------
class BFInstruction(abc.ABC):
    @abc.abstractmethod
    def execute(self, memory : BFMemory):
        pass
    
    @staticmethod
    def parse(program : str, leniant : bool = True):
        stack = [[]]

        for c in program:
            # print(f"c: {c}")
            if c == '+':
                stack[-1].append(BFIncrement(1))
            elif c == '-':
                stack[-1].append(BFIncrement(-1))
            elif c == '>':
                stack[-1].append(BFPointer(1))
            elif c == '<':
                stack[-1].append(BFPointer(-1))
            elif c == '.':
                stack[-1].append(BFPrint())
            elif c == ',':
                stack[-1].append(BFInput())
            elif c == '[':
                stack.append([])
            elif c == ']':
                if len(stack) < 2:
                    raise BFError
                stack[-2].append(BFLoop(BFBlock(stack.pop())))
            elif not (c.isspace() or leniant):
                    raise BFError

        if len(stack) != 1:
            raise BFError
        # print(f"iterated through all of the characters")
        return BFBlock(stack.pop())

# --------------------------------------------------------------------
class BFIncrement(BFInstruction):
    def execute(self, memory : BFMemory):
        memory.increment()

    def __init__(self, val: int) -> None:
        super().__init__()
        self.__value : int = val
        self.__ptr : int = 0
 
    def __str__(self) -> str:
        return f"Incr({self.__value, self.__ptr})"

    def change_val(self, new_val : int) -> None:
        """ Changes value for incrementing """
        self.__value = new_val

    def change_ptr(self, new_val : int) -> None:
        """ Changes value for incrementing """
        self.__ptr = new_val

    # get the value of the insruction
    value : int = property(lambda self: self.__value)
    ptr : int = property(lambda self: self.__ptr)

# --------------------------------------------------------------------
class BFPointer(BFInstruction):
    def execute(self, memory : BFMemory):
        memory.forward()

    def __init__(self, val: int) -> None:
        super().__init__()
        self.__value : int = val

    def __str__(self) -> str:
        return f"Ptr({self.__value})"

    def change_val(self, new_val : int) -> None:
        """ Changes value for incrementing """
        self.__value = new_val

    # get the value of the insruction
    value : int = property(lambda self: self.__value)

# --------------------------------------------------------------------
class BFBlock(BFInstruction):
    def __init__(self, block : List[BFInstruction]):
        self._block = block

    block = property(lambda self : self._block)

    def __str__(self) -> str:
        return "BFBlock(["+ ",".join([str(instruction) for instruction in self._block]) + "]"

    def execute(self, memory : BFMemory):
        for instruction in self.block:
            instruction.execute(memory)

    def get_block(self):
        return self._block

# --------------------------------------------------------------------
class BFLoop(BFInstruction):
    def __init__(self, body : BFBlock):
        self._body : BFBlock = body
        self.__inf : bool = False

    body = property(lambda self : self._body)
    inf = property(lambda self : self.__inf)

    def execute(self, memory : BFMemory):
        while memory.get():
            self.body.execute(memory)

    def set_inf(self) -> None:
        """ Sets inf loop flag """
        self.__inf = True

    def __str__(self) -> str:
        return "Loop"

# ---------------------------------------------------------------------
class BFPrint(BFInstruction):
    def execute(self, memory : BFMemory):
        sys.stdout.write(chr(memory.get()))
        sys.stdout.flush()

    def __str__(self) -> str:
        return "Print"

# --------------------------------------------------------------------
class BFInput(BFInstruction):
    def execute(self, memory : BFMemory):
        c = sys.stdin.buffer.read(1)
        if len(c) == 0:
            raise BFExit
        memory.set(ord(c))

    def __str__(self) -> str:
        return "Input"

# --------------------------------------------------------------------
def parse_program(fname) -> BFBlock:
    """" Parse the program and return the list of all instr """
    with open(fname) as stream:
        program = stream.read()
    return BFInstruction.parse(program)

def _main():
    if len(sys.argv)-1 != 1:
        print(f'Usage: {sys.argv[0]} [FILE.bf]', file = sys.stderr)
        exit(1)

    program = parse_program(sys.argv[1])
    try:
        program.execute(BFMemory())
    except BFExit:
        pass
    BFExit

# --------------------------------------------------------------------

if __name__ == '__main__':
    _main()