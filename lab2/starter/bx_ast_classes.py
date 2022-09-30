import json
from traceback import print_tb
from typing import List

# global macro for check_syntax
vars = []

class Node:
    def __init__(self) -> None:
        pass

    def syntax_error(self, msg: str):
        raise SyntaxError(msg)
    
# ------------------------------------------------------------------------------#
# Expression Classes
# ------------------------------------------------------------------------------#

class Expression(Node):
    def __init__(self) -> None:
        super().__init__()

class ExpressionVar(Expression):
    def __init__(self, name: str, pos: int = None):
        super().__init__()
        self.name = name
        self.pos = pos

    def check_syntax(self) -> None :
        # print(f"entered ExprVar check_syntax {self.pos}")
        global vars
        if self.name not in vars:
            self.syntax_error(f"Undefined variable at line {self.pos}")

class ExpressionInt(Expression):
    def __init__(self, value: int, pos: int = None):
        super().__init__()
        self.value = value
        self._max = 1<<63
        self.pos = pos

    def check_syntax(self) -> None :
        # print(f"entered ExprInt value: {self.value}")
        if self.value < 0 or self.value >= self._max:
            self.syntax_error(f"Value not in range [0, 2^63] at line {self.pos}")

class ExpressionUniOp(Expression):
    def __init__(self, operator: str, argument: Expression):
        super().__init__()
        self.operator = operator
        self.argument = argument

    def check_syntax(self) -> None :
        self.argument.check_syntax()

class ExpressionBinOp(Expression):
    def __init__(self, operator : str, left_arg : Expression, right_arg : Expression) -> None:
        super().__init__()
        self.operator = operator
        self.left_arg = left_arg
        self.right_arg = right_arg

    def check_syntax(self) -> None :
        self.left_arg.check_syntax()
        self.right_arg.check_syntax()

# ------------------------------------------------------------------------------#
# Statement Classes
# ------------------------------------------------------------------------------#

class Statement(Node):
    def __init__(self) -> None:
        super().__init__()

class Assign(Statement):
    def __init__(self, left: str, right: Expression, pos: int) -> None:
        super().__init__()
        self.left = left
        self.right = right
        self.pos = pos
        
    def check_syntax(self) -> None :
        # print(f"entered Assign check_syntax {self.pos}")
        global vars
        if self.left not in vars:
            print("compared in assign")
            self.syntax_error(f"Undeclared variable at line {self.pos}")
        self.right.check_syntax()

class Eval(Statement):
    def __init__(self, arg: Expression) -> None:
        super().__init__()
        self.eval_argument = arg

    def check_syntax(self) -> None :
        self.eval_argument.check_syntax()

class Vardecl(Statement):
    def __init__(self, name: ExpressionVar, value: Expression, pos: int = None) -> None:
        super().__init__()
        self.name: ExpressionVar = name
        self.init: Expression = value
        self.pos = pos

    def check_syntax(self) -> None :
        # print(f"entered Vardecl check_syntax {self.pos}")
        global vars
        if self.name.name not in vars:
            self.init.check_syntax()
            vars.append(self.name.name)
        else:
            self.syntax_error(f"Redefinition of variable at line {self.pos}")

# ------------------------------------------------------------------------------#
# Code to json Classes
# ------------------------------------------------------------------------------#

class AstCode(Node):
    def __init__(self, statements: List, pos: int, main: int = 1 ) -> None:
        super().__init__()
        self.statements: List = statements
        self.pos: int = pos
        if main != 1:
            self.syntax_error(f"Main function defined twice at line {self.pos}")

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
