from parser_bf import *

"""
NOTE: 
    The 3rd optimization: Increments/decrements at a fixed offset
    is automatically dealt with in my implementation of Postponing Movements

    The 5th optimization: Assignments Cancellation
    are also automatically dealt with thanks to my code architecture

    The 7th optimization: Copy/multiply loop simplification
    for this, in our code architecture, we can only have increment instructions in the loop

"""

# --------------------------------------------------------------------
# Macros
# --------------------------------------------------------------------

class Macros:
    """ class of macros used in the compiler """
    all_ops = [BFIncrement, BFPointer]
    input_output = [BFInput, BFPrint]

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
                if len(instr.body.block) > 0:
                    new_instr.append(BFLoop(self.__clean(instr.body.block), instr.id))

            else:   # append all other instructions
                new_instr.append(instr)

        return BFBlock(new_instr)

    def __reverse(self, instr_set : List[BFInstruction]) -> None:
        """ Reverses Increment and Pointer instr so that incr happens before ptr movement """
        for index, instr in enumerate(instr_set):
            # if a pointer then check for switching
            if isinstance(instr, BFPointer):
                if index+1 < len(instr_set):
                    next_instr = instr_set[index+1]
                    # if next instr is incr then switch
                    if isinstance(next_instr, BFIncrement):
                        # print("reversed")
                        instr_set[index], instr_set[index+1] = next_instr, instr
            if isinstance(instr, BFLoop):
                # print("reached loop")
                self.__reverse(instr.body.block)

    # --------------------------------------------------------------------
    # Optimizations
    # --------------------------------------------------------------------

    def __optimize(self) -> None:
        """ Runs all optimizations """
        # run contraction optimizations
        self.__opt_add_sub(self.__block_instr)
        # clean null instr
        self.__block = self.__clean(self.__block_instr)
        self.__block_instr = self.__block.block
        print("Contraction performed")
        
        # run postpone optimizations
        self.__opt_postpone(self.__block_instr)
        # clean null instr
        self.__block = self.__clean(self.__block_instr)
        self.__block_instr = self.__block.block
        # reverse ptr and incr instr
        self.__reverse(self.__block_instr)
        print("Postponing performed")

        # run scan loop simplification
        self.__opt_scan_loop(self.__block_instr)
        # exit(0)
        print("Scan inf loop performed")

        # run copy loop simplification
        unused = self.__opt_loop(self.__block_instr)
        if unused: print("This is a loopless simplifiable program")
        print("Simplifiable loop checked\n")

    def optimize_two(self) -> None:
        # run postpone optimizations
        self.__opt_postpone(self.__block_instr)
        # clean null instr
        self.__block = self.__clean(self.__block_instr)
        self.__block_instr = self.__block.block
        # reverse ptr and incr instr
        self.__reverse(self.__block_instr)

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
    # Scan loop simplification
    # TODO can be merged into opt_postpone

    def __opt_scan_loop(self, instr_set: List[BFInstruction]) -> None:
        """ Checks loops for potential inf loops modifies linear scanning """
        for instr in instr_set:
            if isinstance(instr, BFLoop):
                loop_instr = instr.body.block
                if len(loop_instr) == 1:
                    if isinstance(loop_instr[0], BFPointer) and abs(loop_instr[0].value) == 1:
                        print(loop_instr[0].value)
                        print(instr.id)
                        instr.set_inf()
                else:
                    self.__opt_scan_loop(loop_instr)

    # --------------------------------------------------------------------
    # Copy/multiply loop simplification
    # TODO can be merged into opt_postpone

    def __opt_loop(self, instr_set : List[BFInstruction]) -> bool:
        """ Checks if single assignment can be performed in the loop """
        simplifiable = True
        self.__incr_counter = 0

        assert(len(instr_set)>0), f"Instr {instr_set} should have been cleaned before"
        if not (isinstance(instr_set[0], BFIncrement) \
                and (instr_set[0].ptr, instr_set[0].value) == (0, -1)):
            simplifiable = False

        for instr in instr_set:
            if isinstance(instr, BFLoop):
                simplifiable = self.__opt_loop(instr.body.block)
                # if simplifiable:
                #     print(instr.body)
                    # print(simplifiable)
                instr.set_simplifiable(simplifiable)
                simplifiable = False    # current loop is not simplifiable

            # In a simplifiable loop, ptr instr would have been removed before
            elif not isinstance(instr, BFIncrement):
                simplifiable = False

        return simplifiable


if __name__ == "__main__":
    if len(sys.argv)-1 != 1:
        print(f'Usage: {sys.argv[0]} [FILE.bf]', file = sys.stderr)
        exit(1)

    program = parse_program(sys.argv[1])
    print(f"program before opt: {program}\n")
    optimizer = Optimizer(program)
    print(f"1st opt: {optimizer.block}\n")
    optimizer.optimize_two()
    print(f"2nd opt: {optimizer.block}\n")

    BFExit
