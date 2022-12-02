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
                stack[-1].append(BFIncrement())
            elif c == '-':
                stack[-1].append(BFDecrement())
            elif c == '>':
                stack[-1].append(BFForward())
            elif c == '<':
                stack[-1].append(BFBackward())
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
        print(f"iterated through all of the characters")
        return BFBlock(stack.pop())

# --------------------------------------------------------------------
class BFIncrement(BFInstruction):
    def execute(self, memory : BFMemory):
        memory.increment()

    def __init__(self) -> None:
        super().__init__()
        self._value : int = 1
 
    def __str__(self) -> str:
        return f"Incr({self.value})"

    def change_val(self, new_val : int) -> None:
        """ Changes value for incrementing """
        self._value = new_val

    def get_value(self) -> int:
        """Return number of increments"""
        return self._value

# --------------------------------------------------------------------
class BFDecrement(BFInstruction):
    def execute(self, memory : BFMemory):
        memory.decrement()

    def __init__(self) -> None:
        super().__init__()
        self._value : int = 1

    def __str__(self) -> str:
        return f"Decr({self.value})"

    def change_val(self, new_val : int) -> None:
        """ Changes value for incrementing """
        self._value = new_val

    def get_value(self) -> int:
        """Return number of decrements"""
        return self._value

# --------------------------------------------------------------------
class BFForward(BFInstruction):
    def execute(self, memory : BFMemory):
        memory.forward()

    def __init__(self) -> None:
        super().__init__()
        self._value : int = 1

    def __str__(self) -> str:
        return "Fwd"

    def change_val(self, new_val : int) -> None:
        """ Changes value for incrementing """
        self._value = new_val

    def get_value(self) -> int:
        """Return number of Forwards"""
        return self._value

# --------------------------------------------------------------------
class BFBackward(BFInstruction):
    def execute(self, memory : BFMemory):
        memory.backward()
    
    def __init__(self) -> None:
        super().__init__()
        self._value : int = 1

    def __str__(self) -> str:
        return "Bwd"

    def change_val(self, new_val : int) -> None:
        """ Changes value for incrementing """
        self._value = new_val

    def get_value(self) -> int:
        """Return number of Backwards"""
        return self._value

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
        self._body = body

    body = property(lambda self : self._body)

    def execute(self, memory : BFMemory):
        while memory.get():
            self.body.execute(memory)

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
    print(f"program before opt: {program}")
    program = optimize4(program)
    print(f"optimized program: {program}")
    try:
        program.execute(BFMemory())
    except BFExit:
        pass
    BFExit

# --------------------------------------------------------------------



# OPTIMIZATIONS :D
# --------------------------------------------------------------------
def optimize4(BFB: BFBlock) -> BFBlock:
    BFB = contract_value(BFB)
    BFB = contract_pointer(BFB)
    return BFB
    
def contract_value(BFB: BFBlock) -> BFBlock:
    counter = 0
    new_stack = [[]]
    for instr in BFB.get_block():
        if isinstance(instr, BFIncrement):
            counter +=1
        elif isinstance(instr, BFDecrement):
            counter -=1
        else:
            contracted = create_contracted_instruction(counter , "pointer")
            if contracted is not None:
                new_stack[-1].append(contracted)
            counter = 0
            new_stack[-1].append(instr)

def contract_pointer(BFB: BFBlock) -> BFBlock:
    counter = 0
    new_stack = [[]]
    for instr in BFB.get_block():
        if isinstance(instr, BFForward):
            counter +=1
        elif isinstance(instr, BFBackward):
            counter -=1
        else:
            contracted = create_contracted_instruction(counter , "pointer")
            if contracted is not None:
                new_stack[-1].append(contracted)
            counter = 0
            new_stack[-1].append(instr)
    return BFBlock(new_stack.pop())

def create_contracted_instruction(counter, counter_type):
    """Return if no instruction needs to be added else return instruction with value"""
    if counter_type == "pointer":
        if counter == 0:
            return 
        elif counter < 0:
            return BFForward(value = counter)
        else: 
            return BFBackward(value = counter)
    elif counter_type == "value":
        if counter == 0:
            return 
        elif counter < 0:
            return BFIncrement(value = counter)
        else: 
            return BFDecrement(value = counter)
    else:
        raise RuntimeError("optimization bug in contraction")



if __name__ == '__main__':
    _main()