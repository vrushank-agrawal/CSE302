from parser_bf import *

# --------------------------------------------------------------------
# Counter for Optimizer
# --------------------------------------------------------------------

class Counter:
    """ Counter for optimizing brainfuck """

    def __init__(self) -> None:
        self.__counter : int = 0

    counter_set : bool = property(lambda self : self.__counter != 0)

# --------------------------------------------------------------------
# Optimizer Class
# --------------------------------------------------------------------

class Optimizer:
    """ Optimizes the brainfuck instrs """

    def __init__(self, block: BFBlock) -> None:
        self.__block : List(BFInstruction) = block.block
        self.__optimize()

    block : BFBlock = property(lambda self : self.__block)

    def __optimize(self) -> None:
        """ Runs all optimizations """            

    # --------------------------------------------------------------------
    # simple optimizations
    def __contract_add_sub(self) -> None:
        """ Contracts incr/decr instr """
        for instr in self.__block:
            if isinstance(instr, BFIncrement):
                pass

    # --------------------------------------------------------------------
    # scan loop optimization

    # --------------------------------------------------------------------
    # loop simplification
    