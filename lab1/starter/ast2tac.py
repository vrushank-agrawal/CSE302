import sys, argparse, json, typing

# ------------------------------------------------------------------------------#
# tac file deliverable

opcode_dict = { 
    "addition": "add", "substraction": "sub", "multiplication": "mul",
    "division": "div", "modulus": "mod", "bitwise-and": "and", "opporsite": "neg",
    "bitwise-or": "or", "bitwise-xor": "xor", "bitwise-negation": "not",
    "bitwise-shl": "shl", "bitwise-shr": "shr"
    }

class Tac_json:
    """ 
        This class creates the tac file in json format
        that implements the given method bmm or tmm
    """
    def __init__(self, method: str) -> None:
        self.__instructions = []
        self.method = method
    
    @property
    def json_tac(self) -> json:
        return {"proc": "@main",
                "body": self.__instructions
                }

    @staticmethod
    def json_field(opcode, args, result) -> json:
        """ Creates a single line tac expressions in json format 
            that is appended in the body variable for the tac file """
        return {"opcode": opcode,
                "args": args,
                "result": result
                }


# ------------------------------------------------------------------------------#
# Expression Classes

class Expression:
    def __init__(self) -> None:
        pass

    @staticmethod
    def json_to_name(js_obj):
        return js_obj[1]['value']

    def json_to_expr(self, js_obj):
        """ Function that returns the expression as a class 
            hierarchy from a json object recursively """

        if js_obj[0] == '<expression:var>':
            return ExpressionVar(self.json_to_name(js_obj[1]['name']))
        
        if js_obj[0] == '<expression:int>':
            return ExpressionInt(js_obj[1]['value'])
        
        if js_obj[0] == '<expression:uniop>':
            operator = self.json_to_name(js_obj[1]['operator'])
            argument = self.json_to_expr(js_obj[1]['argument']) # recursive call
            return ExpressionUniOp(operator, argument)
        
        if js_obj[0] == '<expression:binop>':
            operator = self.json_to_name(js_obj[1]['operator'])
            left_arg = self.json_to_expr(js_obj[1]['left'])   # recursive call
            right_arg = self.json_to_expr(js_obj[1]['right']) # recursive call
            return ExpressionBinOp(operator, left_arg, right_arg)
        
        raise ValueError(f'Unrecognized <expression>: {js_obj[0]}')

class ExpressionVar(Expression):
    def __init__(self, name):
        self.name = name

    @property
    def js_obj(self) -> json:
        return {"type": "variable",
                "name": self.name}

class ExpressionInt(Expression):
    def __init__(self, value: int):
        self.value = value

    @property
    def js_obj(self) -> json:
        return {"type": "int",
                "value": self.value}

class ExpressionUniOp(Expression):
    def __init__(self, operator, argument):
        self.operator = operator
        self.argument = argument

    @property
    def js_obj(self) -> json:
        return {"type": "uniop",
                "operator": self.operator,
                "args": self.argument}

class ExpressionBinOp(Expression):
    def __init__(self, operator : str, left_arg : int, right_arg : int) -> None:
        self.operator = operator
        self.left_arg = left_arg
        self.right_arg = right_arg

    @property
    def js_obj(self) -> json:
        return {"type": "binop",
                "operator": self.operator,
                "args": [self.left_arg, self.right_arg]}


# ------------------------------------------------------------------------------#
# Other Statement Classes

class Statement:
    def __init__(self) -> None:
        pass

    @staticmethod
    def json_to_statement(js_obj) -> None:
        """ Function that returns the statement as a class 
            hierarchy from a json object """

        if js_obj[0] == '<statement:vardecl>':
            return Vardecl(js_obj[1]["name"][1]["value"])

        if js_obj[0] == '<statement:assign>':
            return Assign(Expression.json_to_expr(js_obj[1]["lvalue"]),
                          Expression.json_to_expr(js_obj[1]["rvalue"]))
        
        # TODO -- Assumption
        # I am assuming that eval statements only have one arguments
        if js_obj[0] == '<statement:eval>':
            return Eval(Expression.json_to_expr(js_obj[1]["expression"]\
                                                      [1]["arguments"][0][0]))


class Vardecl(Statement):
    def __init__(self, name) -> None:
        super().__init__()
        self.name = name

    @property
    def js_obj(self) -> json:
        return {"type": "vardecl",
                "name": self.name}

class Assign(Statement):
    def __init__(self, left: ExpressionVar, right: Expression) -> None:
        super().__init__()
        self.left = left
        self.right = right

    @property
    def js_obj(self) -> json:
        return {"type": "assign",
                "left": self.left.js_obj,
                "right": self.right.js_obj}

class Eval(Statement):
    def __init__(self, arg: Expression) -> None:
        super().__init__()
        self.eval_argument = arg

    @property
    def js_obj(self):
        return {"type": "eval",
                "eval_arg": self.eval_argument.js_obj}


class Code:
    def __init__(self, js_obj: json) -> None:
        self.statements = self.ast_to_json(js_obj)
        self.vardecl = self.statements[0]
        self.assign = self.statements[1]
        self.eval = self.statements[2]

    @staticmethod
    def ast_to_json(js_obj) -> typing.Tuple[list, list, list] :
        """ Converts all statements to singluar json objects 
            and stores them in respective statement types """
        
        vardecl = []
        assign = []
        eval = []

        # get the proc entry from the ast
        js_obj = js_obj[0][1]
        # get all json elements in the body of proc
        body = js_obj["body"][:]

        for elem in body:
            statement = Statement(elem)
            if elem[0] == "<statement:vardecl>":
                vardecl.append(statement)
            elif elem[0] == "<statement:assign>":
                assign.append(statement)
            elif elem[0] == "<statement:eval>":
                eval.append(statement)

        return (vardecl, assign, eval)

# ------------------------------------------------------------------------------#
# Main parsing functions

def ast2tac(filename, method: str) -> None:
    """ Converts ast to tac and saves it in {filename[:-4]}.tac.json"""
    with open(filename, 'r') as fp:
        js_obj = json.load(fp)
    #     ast_code = Code(js_obj["ast"])

    # tac_json = Tac_json(ast_code, method)
    # tac_filename = filename[:-4] + 'tac.json'
    # with open(tac_filename, 'w') as fp:
    #     json.dump(tac_json.js_obj, fp)

    # print(js_obj["ast"][0][0])
    js_obj = js_obj["ast"][0][1]
    body = js_obj["body"][:]
    elem = body[1]
    eval_elem = body[4]

    # print(body[1][0])                 # <statement:vardecl>
    # print(type(elem[0]))              # <class 'str'>
    print(elem[1]["name"][1]["value"])  # y
    print(eval_elem[1]["expression"][1]["arguments"][0])
    # print(js_obj["ast"][0][1][4][0])


if __name__=="__main__":

    parser = argparse.ArgumentParser(description='Process some integers.')

    parser.add_argument('--tmm', dest='tmm', action="store_true", default=False)
    parser.add_argument('--bmm', dest='bmm', action='store_true', default=False)
    parser.add_argument('filename', metavar="FILE", type=str, nargs=1)

    args = parser.parse_args(sys.argv[1:])

    # select the method used for conversion, default is tmm
    method = "tmm"
    if args.bmm: method = "bmm"
    tac_filename = args.filename[0]

    ast2tac(tac_filename, method)
