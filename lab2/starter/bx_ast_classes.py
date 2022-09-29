# from typing import Union
from glob import glob
import json, sys
from typing import List

# global macro for check_syntax
vars = []

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

    def check_syntax(self) -> None :
        global vars
        if self.name not in vars:
            print(f"Syntax Error: Undefined variable at line {self.pos}")
            sys.exit(1)

class ExpressionInt(Expression):
    def __init__(self, value: int, pos: int = None):
        self.value = value
        self._max = 1<<63
        self.pos = pos

    def check_syntax(self) -> None :
        if self.value < 0 or self.value > self._max:
            print(f"Syntax Error: Value not in range [0, 2^63] at line {self.pos}")
            sys.exit(1)

class ExpressionUniOp(Expression):
    def __init__(self, operator: str, argument: Expression):
        self.operator = operator
        self.argument = argument

    def check_syntax(self) -> None :
        self.argument.check_syntax()

class ExpressionBinOp(Expression):
    def __init__(self, operator : str, left_arg : Expression, right_arg : Expression) -> None:
        self.operator = operator
        self.left_arg = left_arg
        self.right_arg = right_arg

    def check_syntax(self) -> None :
        self.left_arg.check_syntax()
        self.right_arg.check_syntax()

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
        
    def check_syntax(self) -> None :
        self.left.check_syntax()
        self.right.check_syntax()

class Eval(Statement):
    def __init__(self, arg: Expression) -> None:
        self.eval_argument = arg

    def check_syntax(self) -> None :
        self.eval_argument.check_syntax()

class Vardecl(Statement):
    def __init__(self, name: ExpressionVar, value: Expression, pos: int = None) -> None:
        self.name: ExpressionVar = name
        self.init: Expression = value
        self.pos = pos

    def check_syntax(self) -> None :
        global vars
        if self.name.name not in vars:
            self.init.check_syntax()
            vars.append(self.name.name)
        else:
            print(f"Syntax error: Redefinition of variable at line {self.pos}")
            sys.exit(1)

# ------------------------------------------------------------------------------#
# Code to json Classes
# ------------------------------------------------------------------------------#

class AstCode:
    def __init__(self, statements: List, pos: int, main: int = 1 ) -> None:
        self.statements: List = statements
        if main != 1:
            print(f"Syntax error: Main function defined twice at line {pos}")
            sys.exit(1)

    def check_syntax(self) -> None:
        global vars
        vars = []
        for statement in self.statements:
            statement.check_syntax()

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
