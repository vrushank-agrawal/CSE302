from parser import *

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

