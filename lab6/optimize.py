from parser_bf import *

# --------------------------------------------------------------------
# Macros
# --------------------------------------------------------------------

class Macros:
    """ class of macros used in the compiler """
    all_ops = [BFIncrement, BFPointer]

# --------------------------------------------------------------------
# Optimizer Class
# --------------------------------------------------------------------

class Optimizer:
    """ Optimizes the brainfuck instrs """

    def __init__(self, block: BFBlock) -> None:
        self.__block : BFBlock = block
        self.__block_instr : List(BFInstruction) = block.block
        self.__instr_len : int = len(self.__block_instr)
        self.__incr_counter : int = None
        self.__ptr_counter : int = None
        self.__optimize()

    block : BFBlock = property(lambda self : self.__block)
    block_instr : List[BFInstruction] = property(lambda self : self.__block_instr)

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
        self.__opt_add_sub(self.__block_instr)
        # # run postpone optimizations
        # self.__opt_postpone(self.__block_instr)
        # clean null instr
        self.__block = self.__clean(self.__block_instr)
        self.__block_instr = self.__block.block

        # print("Optimization performed")

    def optimize_two(self) -> None:
        # print("enter opt_postpone")
        self.__opt_postpone(self.__block_instr)
        self.__block = self.__clean(self.__block_instr)
        self.__block_instr = self.__block.block
        # print("exit opt_postpone")

    # --------------------------------------------------------------------
    # Contraction optimizations

    def __opt_add_sub(self, instr_set: List[BFInstruction]) -> None:
        """ Contracts incr/decr instr """
        instr_len = len(instr_set)
        index = 0

        while index < instr_len:    # run through all instructions
            instr = instr_set[index]

            if isinstance(instr, BFIncrement):  # update arith_ops
                # set the counter to initial value
                self.__incr_counter = instr.value
                while index+1 < instr_len:  # iterate until end of list
                    next_instr = instr_set[index+1]
                    # if next instr not arith_op break
                    if not isinstance(next_instr, BFIncrement):
                        break
                    # nullify the value of the current instr
                    instr.change_val(0)
                    # add the value of the next instruction
                    # and reset the curr instr to next
                    self.__incr_counter += next_instr.value
                    instr = next_instr
                    index += 1
                instr.change_val(self.__incr_counter)

            elif isinstance(instr, BFPointer):    # update ptr_ops
                # set the counter to initial value
                self.__ptr_counter = instr.value
                while index+1 < instr_len:  # iterate until end of list
                    next_instr = instr_set[index+1]
                    # if next instr not arith_op break
                    if not isinstance(next_instr, BFPointer):
                        break
                    # nullify the value of the current instr
                    instr.change_val(0)
                    # add the value of the next instruction
                    # and reset the curr instr to next
                    self.__ptr_counter += next_instr.value
                    instr = next_instr
                    index += 1
                instr.change_val(self.__ptr_counter)

            elif isinstance(instr, BFLoop):   # iterate through loop instr
                self.__opt_add_sub(instr.body.block)
            
            index += 1

    # --------------------------------------------------------------------
    # Postponing Movement

    def __opt_postpone(self, instr_set: List[BFInstruction]) -> None:
        """ Optimizations for movement postponing """
        instr_len = len(instr_set)
        index = 0

        while index < instr_len:    # iterate through all instr
            instr = instr_set[index]

            if isinstance(instr, BFPointer):
                last_ptr_instr = instr
                # set the ptr value
                self.__ptr_counter = instr.value
                while index+1 < instr_len:
                    next_instr = instr_set[index+1]
                    # if next instr not an incr or ptr then break
                    if not type(next_instr) in Macros.all_ops:
                        break
                    if isinstance(next_instr, BFPointer):
                        assert(isinstance(instr, BFIncrement)), f"Instrs {instr, next_instr} not contracted!"
                        # update local ptr val
                        self.__ptr_counter += next_instr.value
                        # update last ptr as the latest ptr
                        last_ptr_instr = next_instr
                    elif isinstance(next_instr, BFIncrement):
                        assert(isinstance(instr, BFPointer)), f"Instrs {instr, next_instr} not contracted!"
                        # change dest ptr val for the incr instr
                        next_instr.change_ptr(self.__ptr_counter)
                        # reset ptr val for curr ptr
                        instr.change_val(0)
                    instr = next_instr
                    index += 1
                last_ptr_instr.change_val(self.__ptr_counter)

            elif isinstance(instr, BFLoop):   # iterate through loop instr
                # print(instr.body.block)
                # exit(0)
                self.__opt_postpone(instr.body.block)

            index += 1

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
    print(f"program before opt: {program}\n")
    optimizer = Optimizer(program)
    print(f"1st opt: {optimizer.block}\n")
    # optimizer.optimize_two()
    print(f"2nd opt: {optimizer.block}\n")
    try:
        program.execute(BFMemory())
    except BFExit:
        pass
    BFExit
