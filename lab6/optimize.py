from parser_bf import *

# --------------------------------------------------------------------
# Counter for Optimizer
# --------------------------------------------------------------------

class Macros:
    """ class of macros used in the compiler """
    all_ops = [BFIncrement, BFPointer]

# --------------------------------------------------------------------
# Counter for Optimizer
# --------------------------------------------------------------------

class Counter:
    """ Value counter for optimizing brainfuck code """

    def __init__(self) -> None:
        self.__counter : int = None

    def set_counter(self, val : int) -> None:
        """ reset counter value """
        self.__counter = val

    def update_counter(self, val : int) -> None:
        """ adds either 1 or -1 to the counter """
        if self.__counter is None: raise RuntimeError("Counter updated without setting")
        self.__counter += val

    counter : int = property(lambda self : self.__counter)

# --------------------------------------------------------------------
# Optimizer Class
# --------------------------------------------------------------------

class Optimizer:
    """ Optimizes the brainfuck instrs """

    def __init__(self, block: BFBlock) -> None:
        self.__block : List(BFInstruction) = block.block
        self.__instr_len : int = len(self.__block)
        # self.__counter : Counter = Counter
        self.__counter : int = None
        self.__optimize()

    block : BFBlock = property(lambda self : self.__block)

    def __clean(self, instr_set : List[BFInstruction]) -> BFBlock:
        """ Removes dead instr with 0 value """
        new_instr = list()
        for instr in instr_set:
            if type(instr) in Macros.all_ops:   # look for dead instr
                if instr.value != 0:
                    new_instr.append(instr)

            elif isinstance(instr, BFLoop):   # iterate through BFLoop instructions
                new_instr.append(BFLoop(self.__clean(instr.body.block)))

            else:   # append all other instructions
                new_instr.append(instr)

        return BFBlock(new_instr)

    # --------------------------------------------------------------------
    # Optimizations
    # --------------------------------------------------------------------

    def __optimize(self) -> None:
        """ Runs all optimizations """
        # run contraction optimizations
        self.__opt_add_sub(self.__block)
        # clean null instr
        self.__block = self.__clean(self.__block)

    # --------------------------------------------------------------------
    # Contraction optimizations

    def __opt_add_sub(self, instr_set: List[BFInstruction]) -> None:
        """ Contracts incr/decr instr """
        instr_len = len(instr_set)
        index = 0
        # run through all instructions
        while index < instr_len:
            instr = instr_set[index]

            # update arith_ops
            if isinstance(instr, BFIncrement):
                # set the counter to initial value of the
                # increment/decrement concat loop
                self.__counter = instr.value
                # iterate until end of list
                while index+1 < instr_len:
                    next_instr = instr_set[index+1]
                    # if next instr not arith_op break
                    if isinstance(instr, BFIncrement):
                        break
                    self.__counter += instr.value
                    instr.change_val(0)
                    index += 1
                    instr = next_instr
                instr.change_val(self.__counter)

            # update pointer_ops
            if isinstance(instr, BFPointer):
                # set the counter to initial value of the
                # increment/decrement concat loop
                self.__counter = instr.value
                # iterate until end of list
                while index+1 < instr_len:
                    next_instr = instr_set[index+1]
                    # if next instr not arith_op break
                    if isinstance(instr, BFPointer):
                        break
                    self.__counter += instr.value
                    instr.change_val(0)
                    index += 1
                    instr = next_instr
                instr.change_val(self.__counter)

            # iterate through loop instr
            if isinstance(instr, BFLoop):
                self.__opt_add_sub(instr.body.block)
            
            index += 1

    # --------------------------------------------------------------------
    # Postponing Movement

    # --------------------------------------------------------------------
    # Assignment Cancellation

    # --------------------------------------------------------------------
    # Scan loop simplification

    # --------------------------------------------------------------------
    # Copy/multiply loop simplification
    

if __name__ == "__main__":
    if len(sys.argv)-1 != 1:
        print(f'Usage: {sys.argv[0]} [FILE.bf]', file = sys.stderr)
        exit(1)

    program = parse_program(sys.argv[1])
    print(f"program before opt: {program}")
    optimizer = Optimizer(program)
    program = optimizer.block
    print(f"optimized program: {program}")
    try:
        program.execute(BFMemory())
    except BFExit:
        pass
    BFExit
