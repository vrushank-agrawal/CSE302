from typing import List, Union
import json

class Tac_statement:
    """ This class is for returning TAC statements in json format """
    
    def __init__(self, opcode: str, args: list, result: str) -> None:
        self.opcode = opcode
        self.args = args
        self.result = result

    @property
    def json_field(self) -> json:
        """ Creates a single line tac expressions in json format """
        return {"opcode": self.opcode,
                "args": self.args,
                "result": self.result }


# ------------------------------------------------------------------------------#
# Expression Classes
# ------------------------------------------------------------------------------#

class Expression:
    def __init__(self) -> None:
        pass

class ExpressionVar(Expression):
    def __init__(self, name: str):
        self.name = name

class ExpressionInt(Expression):
    def __init__(self, value: int):
        self.value = value

class ExpressionUniOp(Expression):
    def __init__(self, operator: str, argument: Union[int, str]):
        self.operator = operator
        self.argument = argument

class ExpressionBinOp(Expression):
    def __init__(self, operator : str, left_arg : Union[int, str], right_arg : Union[int, str]) -> None:
        self.operator = operator
        self.left_arg = left_arg
        self.right_arg = right_arg

def json_to_name(js_obj: json) -> str:
    """ Returns the value of the variable """
    return js_obj[1]['value']

def json_to_expr(js_obj: json) -> Expression:
    """ Function that returns the expression as a class 
        hierarchy from a json object recursively """

    if js_obj[0] == '<expression:var>':
        return ExpressionVar(json_to_name(js_obj[1]['name']))
    
    if js_obj[0] == '<lvalue:var>':
        return ExpressionVar(json_to_name(js_obj[1]['name']))
    
    if js_obj[0] == '<expression:int>':
        return ExpressionInt(js_obj[1]['value'])
    
    if js_obj[0] == '<expression:uniop>':
        operator = json_to_name(js_obj[1]['operator'])
        argument = json_to_expr(js_obj[1]['argument']) # recursive call
        return ExpressionUniOp(operator, argument)
    
    if js_obj[0] == '<expression:binop>':
        operator = json_to_name(js_obj[1]['operator'])
        left_arg = json_to_expr(js_obj[1]['left'])   # recursive call
        right_arg = json_to_expr(js_obj[1]['right']) # recursive call
        return ExpressionBinOp(operator, left_arg, right_arg)
    
    raise ValueError(f'Unrecognized <expression>: {js_obj[0]}')

# ------------------------------------------------------------------------------#
# Other Statement Classes
# ------------------------------------------------------------------------------#

class Statement:
    def __init__(self) -> None:
        pass

class Assign(Statement):
    def __init__(self, left: ExpressionVar, right: Expression) -> None:
        self.left = left
        self.right = right

class Eval(Statement):
    def __init__(self, arg: Expression) -> None:
        self.eval_argument = arg


def json_to_statement(js_obj) -> None:
    """ Function that returns the statement as
        a class hierarchy from a json object """

    if js_obj[0] == '<statement:assign>':
        return Assign(json_to_expr(js_obj[1]["lvalue"]),
                      json_to_expr(js_obj[1]["rvalue"]))
    
    if js_obj[0] == '<statement:eval>':
        return Eval(json_to_expr(js_obj[1]["expression"]\
                                        [1]["arguments"][0]))
    
    raise ValueError(f'Unrecognized <statement>: {js_obj[0]}')
