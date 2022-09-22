import sys, argparse, json, typing

# ------------------------------------------------------------------------------#
# tac file delivery

class Code_as_tac_json:
    """ 
        This class creates the tac file in json format
        that implements the given method bmm or tmm
    """
    def __init__(self, js_obj: json, method: str) -> None:
        self.ast_code = Code(js_obj, method)
        self.method = method
    
    def json_tac(self) -> json:
        return {"proc": "@main",
                "body": self.ast_code.instructions
                }

# Never used -- Redundant
class Tac_statement:
    """
        This class is for returning single line statements
        in json format for the source code
    """
    def __init__(self, opcode: str, args: list, result: str) -> None:
        self.opcode = opcode
        self.args = args
        self.result = result

    @staticmethod
    def json_field(self) -> json:
        """ Creates a single line tac expressions in json format 
            that is appended in the body variable for the tac file """
        return {"opcode": self.opcode,
                "args": self.args,
                "result": self.result
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

    def js_obj(self) -> json:
        return {"type": "variable",
                "name": self.name}

class ExpressionInt(Expression):
    def __init__(self, value: int):
        self.value = value

    def js_obj(self) -> json:
        return {"type": "int",
                "value": self.value}

class ExpressionUniOp(Expression):
    def __init__(self, operator, argument):
        self.operator = operator
        self.argument = argument

    def js_obj(self) -> json:
        return {"type": "uniop",
                "operator": self.operator,
                "args": self.argument}

class ExpressionBinOp(Expression):
    def __init__(self, operator : str, left_arg : int, right_arg : int) -> None:
        self.operator = operator
        self.left_arg = left_arg
        self.right_arg = right_arg

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

        if js_obj[0] == '<statement:assign>':
            return Assign(Expression.json_to_expr(js_obj[1]["lvalue"]),
                          Expression.json_to_expr(js_obj[1]["rvalue"]))
        
        # TODO -- Assumption
        # I am assuming that eval statements only have one arguments
        if js_obj[0] == '<statement:eval>':
            return Eval(Expression.json_to_expr(js_obj[1]["expression"]\
                                                      [1]["arguments"][0][0]))


class Assign(Statement):
    def __init__(self, left: ExpressionVar, right: Expression) -> None:
        super().__init__()
        self.left = left
        self.right = right

    def js_obj(self) -> json:
        return {"type": "assign",
                "left": self.left.js_obj,
                "right": self.right.js_obj}

class Eval(Statement):
    def __init__(self, arg: Expression) -> None:
        super().__init__()
        self.eval_argument = arg

    def js_obj(self):
        return {"type": "eval",
                "eval_arg": self.eval_argument.js_obj}

# ------------------------------------------------------------------------------#
# ast to tac code conversion class

binopcode_dict = { 
    "addition": "add", "substraction": "sub", 
    "multiplication": "mul", "division": "div", 
    "modulus": "mod", "bitwise-and": "and", 
    "bitwise-shr": "shr", "bitwise-or": "or", 
    "bitwise-xor": "xor", "bitwise-shl": "shl"
}

unopcode_dict = {
    "opporsite": "neg", "bitwise-negation": "not"
}

class Code:
    def __init__(self, js_obj: json, method: str) -> None:
        self.method = method
        self.init_parse(js_obj)
        self.method_class = {"bmm": self.tmm_statement,
                             "tmm": self.bmm_statement }
        self.temp_var_map = {}
        self.global_reg_counter = 0
        self.instructions = []

    def fresh_temp(self) -> str:
        """ Creates and returns a fresh temporary """
        fresh_temp = f"%{self.global_reg_counter}"
        self.global_reg_counter += 1
        return fresh_temp

    def assign_temp(self, value: str) -> str:
        """ Assigns a new temp reg """
        reg = f"%{self.global_reg_counter}"
        self.global_reg_counter += 1
        self.temp_var_map[reg] = value
        return reg

    def return_temp(self, name) -> str:
        """ Returns the temp reg allocator """
        if name in self.temp_var_map:
            return self.temp_var_map[name]
        else:
            return self.assign_temp(name)

    def init_parse(self, js_obj):
        """ Converts all statements to singluar json objects 
            and stores them in respective statement types """
        
        # get the proc entry from the ast
        js_obj = js_obj[0][1]
        # get all json elements in the body of proc
        body = js_obj["body"][:]

        for elem in body:
            if elem[0] == "<statement:vardecl>":
                variable_value = elem[1]["name"][1]["value"]
                temp_reg = self.return_temp(variable_value)
                self.instructions.append(Tac_statement("const", [0], temp_reg))
            else:
                self.method_class(Statement(elem))

    # ------------------------------------------------------------#
    # tmm method

    def tmm_expression(self, expression: Expression, result: str):
        """ Evaluates the expression and adds 
        it to instructions list as json object """
        if isinstance(expression, ExpressionVar):
            stored_temp = self.return_temp(expression.name)
            self.instructions.append(Tac_statement('copy', [stored_temp], result))
        elif isinstance(expression, ExpressionInt):
            self.instructions.append(Tac_statement('const', [expression.value], result))
        elif isinstance(expression, ExpressionBinOp):
            pass

    def tmm_statement(self, statement: Statement) -> None :
        """ Appends instructions as singluar 
            json objects using the tmm method """
        if isinstance(statement, Assign):
            result_reg = self.return_temp(statement.left.name)
            self.as_tmm_expression(statement.right, result_reg)
        elif isinstance(statement, Eval):
            result_temp = self.fresh_temp()
            self.as_tmm_expression(statement.eval_argument, result_temp)
            self.instructions.append(Tac_statement("print", [result_temp], None))

    # ------------------------------------------------------------#
    # bmm method

    def bmm_expression(self, expression: Expression):
        """ Evaluates the expression and adds 
        it to instructions list as json object """

        if isinstance(expression, ExpressionVar):
            return self.return_temp(expression.name)
        elif isinstance(expression, ExpressionInt):
            result_temp = self.fresh_temp()
            self.instructions.append(Tac_statement('const', [expression.value], result_temp))
            return result_temp
        elif isinstance(expression, ExpressionBinOp):
            pass

    def bmm_statement(self, statement: Statement) -> None:
        """ Appends instructions as singluar 
            json objects using the bmm method """
        if isinstance(statement, Assign):
            result_reg = self.return_temp(statement.left.name)
            self.as_tmm_expression(statement.right, result_reg)
        elif isinstance(statement, Eval):
            result_temp = self.as_bmm_expression(statement.eval_argument)
            self.instructions.append(Tac_statement("print", [result_temp], None))

# ------------------------------------------------------------------------------#
# Main parsing function


if __name__=="__main__":

    parser = argparse.ArgumentParser(description='Process conversion method.')

    parser.add_argument('--tmm', dest='tmm', action="store_true", default=False)
    parser.add_argument('--bmm', dest='bmm', action='store_true', default=False)
    parser.add_argument('filename', metavar="FILE", type=str, nargs=1)

    args = parser.parse_args(sys.argv[1:])

    # select the method used for conversion, default is tmm
    method = "tmm"
    if args.bmm: method = "bmm"
    tac_filename = args.filename[0]

    with open(tac_filename, 'r') as fp:
        js_obj = json.load(fp)

    # code = Code_as_tac_json(js_obj, method)
    # tac_filename = tac_filename[:-4] + 'tac.json'
    # with open(tac_filename, 'w') as fp:
    #     json.dump(code.json_tac(), fp)

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
