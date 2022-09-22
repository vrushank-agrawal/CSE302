import sys, argparse, json
from typing import List

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
                "body": [statement.json_field for statement in self.ast_code.instructions] }


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

class Expression:
    def __init__(self) -> None:
        pass

class ExpressionVar(Expression):
    def __init__(self, name):
        self.name = name

class ExpressionInt(Expression):
    def __init__(self, value: int):
        self.value = value

class ExpressionUniOp(Expression):
    def __init__(self, operator, argument):
        self.operator = operator
        self.argument = argument

class ExpressionBinOp(Expression):
    def __init__(self, operator : str, left_arg : int, right_arg : int) -> None:
        self.operator = operator
        self.left_arg = left_arg
        self.right_arg = right_arg

def json_to_name(js_obj: json) -> str:
    """ Returns the value of the """
    return js_obj[1]['value']

def json_to_expr(js_obj: json) -> Expression:
    """ Function that returns the expression as a class 
        hierarchy from a json object recursively """

    if js_obj[0] == '<expression:var>' or js_obj[0] == '<lvalue:var>':
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

class Statement:
    def __init__(self) -> None:
        pass

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

class Assign(Statement):
    def __init__(self, left: ExpressionVar, right: Expression) -> None:
        self.left = left
        self.right = right

class Eval(Statement):
    def __init__(self, arg: Expression) -> None:
        self.eval_argument = arg

# ------------------------------------------------------------------------------#
# ast to tac code conversion class

binopcode_dict = { 
    "addition": "add", "substraction": "sub", 
    "multiplication": "mul", "division": "div", 
    "modulus": "mod", "bitwise-and": "and", 
    "bitwise-shr": "shr", "bitwise-or": "or", 
    "bitwise-xor": "xor", "bitwise-shl": "shl"
}

uniopcode_dict = {
    "opposite": "neg", "bitwise-negation": "not"
}

class Code:
    def __init__(self, js_obj: json, method: str) -> None:
        self.method: str = method
        self.js_obj: json = js_obj
        self.temp_var_map: dict = {}
        self.global_reg_counter: int = 0
        self.instructions: List = []
        self.init_parse()

    def fresh_temp(self, value: str = '') -> str:
        """ Creates and returns a fresh temporary """
        fresh_temp = f"%{self.global_reg_counter}"
        self.global_reg_counter += 1
        self.temp_var_map[fresh_temp] = value
        return fresh_temp

    def return_temp(self, name: str) -> str:
        """ Returns the temp reg allocator """
        if name in self.temp_var_map:
            return self.temp_var_map[name]
        else:
            return self.fresh_temp(name)

    def init_parse(self) -> None:
        """ Converts all statements to singluar json objects 
            and stores them in the instructions variable """
        
        js_obj = self.js_obj[0][1]           # get the proc entry from the ast
        body = js_obj["body"][:]        # get all json elements in the body of proc

        for elem in body:   # loop through all statements in the body
            if elem[0] == "<statement:vardecl>":    # append a variable declaration
                variable_value = elem[1]["name"][1]["value"]
                temp_reg = self.return_temp(variable_value)
                self.instructions.append(Tac_statement("const", [0], temp_reg))
            elif self.method == "bmm":   # Otherwise treat the statement as bmm
                self.bmm_statement(Statement.json_to_statement(elem))
            elif self.method == "tmm":   # Otherwise treat the statement as tmm
                self.tmm_statement(Statement.json_to_statement(elem))
            else:
                print("This is not supposed to happen. Apocalypse!")
                exit(1)

    # ------------------------------------------------------------#
    # tmm method

    def tmm_expression(self, expression: Expression, result: str) -> None:
        """ Evaluates the expression and adds it to instructions list as json object """

        if isinstance(expression, ExpressionVar):
            stored_temp = self.return_temp(expression.name)
            self.instructions.append(Tac_statement('copy', [stored_temp], result))
        
        elif isinstance(expression, ExpressionInt):
            self.instructions.append(Tac_statement('const', [expression.value], result))
        
        elif isinstance(expression, ExpressionUniOp):
            result_temp = self.fresh_temp()
            self.tmm_expression(expression.argument, result_temp)
            self.instructions.append(Tac_statement(uniopcode_dict[expression.operator],
                                                   [result_temp], result))
        elif isinstance(expression, ExpressionBinOp):
            result_temp = [self.fresh_temp(), self.fresh_temp]
            arguments = [self.tmm_expression(expression.left_arg, result_temp[0]), 
                         self.tmm_expression(expression.right_arg, result_temp[1])]
            self.instructions.append(Tac_statement(binopcode_dict[expression.operator], 
                                                   arguments, result))
        else:
            raise ValueError(f'Unrecognized <expression>: {expression}')

    def tmm_statement(self, statement: Statement) -> None :
        """ Appends instructions as singluar json objects using the tmm method """

        if isinstance(statement, Assign):
            result_reg = self.return_temp(statement.left.name)
            self.tmm_expression(statement.right, result_reg)
        
        elif isinstance(statement, Eval):
            result_temp = self.fresh_temp()
            self.tmm_expression(statement.eval_argument, result_temp)
            self.instructions.append(Tac_statement("print", [result_temp], None))
        
        else:
            raise ValueError(f'Unrecognized <statement>: {statement}')

    # ------------------------------------------------------------#
    # bmm method

    def bmm_expression(self, expression: Expression) -> str:
        """ Evaluates the expression and adds it to instructions list as json object """
        
        if isinstance(expression, ExpressionVar):
            return self.return_temp(expression.name)
        
        elif isinstance(expression, ExpressionInt):
            result_temp = self.fresh_temp()
            self.instructions.append(Tac_statement('const', [expression.value], result_temp))
            return result_temp
        
        elif isinstance(expression, ExpressionUniOp):
            result_temp = self.fresh_temp()
            self.instructions.append(Tac_statement(uniopcode_dict[expression.operator], 
                                                   [self.bmm_expression(expression.argument)],
                                                   result_temp))
            return result_temp
        
        elif isinstance(expression, ExpressionBinOp):
            arguments = [self.bmm_expression(expression.left_arg), self.bmm_expression(expression.right_arg)]
            result_temp = self.fresh_temp()
            self.instructions.append(Tac_statement(binopcode_dict[expression.operator], 
                                                   arguments, result_temp))
            return result_temp
        
        else:
            raise ValueError(f'Unrecognized <expression>: {expression}')

    def bmm_statement(self, statement: Statement) -> None:
        """ Appends instructions as singluar json objects using the bmm method """

        if isinstance(statement, Assign):
            result_temp = self.return_temp(statement.left.name)
            self.instructions.append(Tac_statement("copy", [result_temp], 
                                                    self.bmm_expression(statement.right)))
        elif isinstance(statement, Eval):
            result_temp = self.bmm_expression(statement.eval_argument)
            self.instructions.append(Tac_statement("print", [result_temp], None))
        
        else:
            raise ValueError(f'Unrecognized <statement>: {statement}')

# ------------------------------------------------------------------------------#
# Main parsing function

if __name__=="__main__":

    parser = argparse.ArgumentParser(description='Get method for conversion and filetype.')
    parser.add_argument('--tmm', dest='tmm', action="store_true", default=False)
    parser.add_argument('--bmm', dest='bmm', action='store_true', default=False)
    parser.add_argument('filename', metavar="FILE", type=str, nargs=1)

    args = parser.parse_args(sys.argv[1:])

    # select the method used for conversion, default is bmm
    method = "bmm"
    if args.tmm: method = "tmm"
    tac_filename = args.filename[0]

    with open(tac_filename, 'r') as fp:
        js_obj = json.load(fp)
    code = Code_as_tac_json(js_obj['ast'], method)
    tac_filename = tac_filename[:-4] + 'tac.json'
    with open(tac_filename, 'w') as fp:
        json.dump(code.json_tac(), fp, indent=4)


    # DEBUGGING CODE

    # print(js_obj["ast"][0][0])
    # js_obj = js_obj["ast"][0][1]
    # body = js_obj["body"][:]
    # elem = body[1]
    # eval_elem = body[4]

    # print(body[1][0])                 # <statement:vardecl>
    # print(type(elem[0]))              # <class 'str'>
    # print(elem[1]["name"][1]["value"])  # y
    # print(eval_elem[1]["expression"][1]["arguments"][0])
    # print(js_obj["ast"][0][1][4][0])
