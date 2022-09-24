from typing import Union
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

    def check_syntax(self, vars) -> None :
        if self.name not in vars:
            print("Syntax Error: Variable not defined")

    @property
    def jsonify(self) -> json :
        return {"name" : self.name }

class ExpressionInt(Expression):
    def __init__(self, value: int):
        self.value = value
        self._max = 1<<63

    def check_syntax(self) -> None :
        if self.value < 0 or self.value < self._max:
            print("Syntax Error: Value not in range [0, 2^63]")

    @property
    def jsonify(self) -> json :
        return {"value" : self.value }

class ExpressionUniOp(Expression):
    def __init__(self, operator: str, argument: Expression):
        self.operator = operator
        self.argument = argument

    def check_syntax(self, vars) -> None :
        self.argument.check_syntax(vars)

    @property
    def jsonify(self) -> json :
        return {"operator" : self.operator,
                "argument": self.argument }
                
class ExpressionBinOp(Expression):
    def __init__(self, operator : str, left_arg : Expression, right_arg : Expression) -> None:
        self.operator = operator
        self.left_arg = left_arg
        self.right_arg = right_arg

    def check_syntax(self, vars) -> None :
        self.left_arg.check_syntax(vars)
        self.right_arg.check_syntax(vars)

    @property
    def jsonify(self) -> json :
        return {"operator" : self.operator,
                "left": self.left_arg,
                "right": self.right_arg}

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
        
    def check_syntax(self, vars: dict) -> None :
        self.left.syntax_check(vars)
        self.right.syntax_check(vars)

    @property
    def jsonify(self) -> json :
        return {"lvalue" : self.left.jsonify,
                "rvalue" : self.right.jsonify}

class Eval(Statement):
    def __init__(self, arg: Expression) -> None:
        self.eval_argument = arg

    def check_syntax(self, vars) -> None :
        self.eval_argument.check_syntax(vars)

    @property
    def jsonify(self) -> json :
        return {"arguments" : self.eval_argument.jsonify}

class Vardecl(Statement):
    def __init__(self, name: ExpressionVar, value: Expression) -> None:
        self.name: ExpressionVar = name
        self.init: Expression = value

    def check_syntax(self, vars: list) -> None :
        if self.name.name not in vars:
            self.init.check_syntax(vars)
            vars.append(self.name.name)
        else:
            print("Syntax error: Variable already defined")

    @property
    def jsonify(self) -> json :
        return {"name" : self.name.jsonify,
                "init" : self.init.jsonify}
        

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


class AstCode:
    def __init__(self, statements) -> None:
        self.statements = statements

    def check_syntax(self) -> None:
        vars = []
        for statement in self.statements:
            statement.check_syntax(vars)

    @property
    def jsonify(self):
        return [statement.jsonify for statement in self.statements]
