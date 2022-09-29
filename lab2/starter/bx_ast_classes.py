# from typing import Union
import json
from typing import List

# ------------------------------------------------------------------------------#
# Expression Classes
# ------------------------------------------------------------------------------#

class Expression:
    def __init__(self) -> None:
        pass

class ExpressionVar(Expression):
    def __init__(self, name: str, pos: int = None):
        self.name = name
        self.pos = pos

    def check_syntax(self, vars) -> None :
        if self.name not in vars:
            print(f"Syntax Error: Variable not defined at line {self.pos}")

class ExpressionInt(Expression):
    def __init__(self, value: int, pos: int = None):
        self.value = value
        self._max = 1<<63
        self.pos = pos

    def check_syntax(self) -> None :
        if self.value < 0 or self.value < self._max:
            print(f"Syntax Error: Value not in range [0, 2^63] at line {self.pos}")

class ExpressionUniOp(Expression):
    def __init__(self, operator: str, argument: Expression):
        self.operator = operator
        self.argument = argument

    def check_syntax(self, vars) -> None :
        self.argument.check_syntax(vars)

class ExpressionBinOp(Expression):
    def __init__(self, operator : str, left_arg : Expression, right_arg : Expression) -> None:
        self.operator = operator
        self.left_arg = left_arg
        self.right_arg = right_arg

    def check_syntax(self, vars) -> None :
        self.left_arg.check_syntax(vars)
        self.right_arg.check_syntax(vars)

# ------------------------------------------------------------------------------#
# Statement Classes
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

class Eval(Statement):
    def __init__(self, arg: Expression) -> None:
        self.eval_argument = arg

    def check_syntax(self, vars) -> None :
        self.eval_argument.check_syntax(vars)

class Vardecl(Statement):
    def __init__(self, name: ExpressionVar, value: Expression, pos: int = None) -> None:
        self.name: ExpressionVar = name
        self.init: Expression = value
        self.pos = pos

    def check_syntax(self, vars: list) -> None :
        if self.name.name not in vars:
            self.init.check_syntax(vars)
            vars.append(self.name.name)
        else:
            print(f"Syntax error: Variable already defined at line {self.pos}")
        
# ------------------------------------------------------------------------------#
# Code to json Classes
# ------------------------------------------------------------------------------#

class AstCode:
    def __init__(self, statements: List) -> None:
        self.statements: List = statements

    def check_syntax(self) -> None:
        vars = []
        for statement in self.statements:
            statement.check_syntax(vars)

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
