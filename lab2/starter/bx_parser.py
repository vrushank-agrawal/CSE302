from py.ply import yacc as yacc
import bx_lexer as my_lexer
import bx_ast_classes as ast_classes

operator_name = {        
    'PLUS': 'addition', 'MINUS': "subtraction", 
    'TIMES': "multiplication", 'DIVIDE': "division", 
    'MODULUS': "modulus", 'UMINUS': "subtraction",
    'BITWISE_AND': "bitwise-and", 'BITWISE_OR': "bitwise-or", 
    'BITWISE_XOR': "bitwise-xor", 'BITWISE_NOT': "bitwise-negation",
    'BITWISE_SHL': "logical-shift-right", 
    'BITWISE_SHR': "logical-shift-left",
}

class MyParser:
    """ Class for parsing the lexer code """
    
    # ---------------------------------------------------------------------#
    # MACROS
    # ---------------------------------------------------------------------#

    tokens = my_lexer.MyLexer.tokens + ('UMINUS',)

    precedence = (
        ('left', 'BITWISE_OR'),
        ('left', 'BITWISE_XOR'),
        ('left', 'BITWISE_AND'),
        ('left', 'BITWISE_SHL', 'BITWISE_SHR'),
        ('left', 'PLUS', 'MINUS'),
        ('left', 'TIMES', 'DIVIDE', 'MODULUS'),
        ('left', 'UMINUS'),
        ('left', 'BITWISE_NOT'),
    )

    # ---------------------------------------------------------------------#
    # misc functions
    # ---------------------------------------------------------------------#

    def __init__(self, lex):
        self.lex = lex
        self.parser = yacc.yacc(module=self, start="astcode", debug=False)
        self.main_defined = False

    def p_error(self, p):
        if not p:   #EOF
            return
        print(f"Syntax error while processing {p.type} at line {p.lineno}")

    def init_parse(self):
        print("enter init_parse")
        astcode = self.parser.parse(lexer=self.lex.lexer, tracking=True)
        return astcode
 
    # ---------------------------------------------------------------------#
    # code parsers
    # ---------------------------------------------------------------------#

    def p_statements(self, p):
        """statements : 
                      | statements statement """
        # loop through the statements recursively
        if len(p) == 1:
            p[0] = []
        else:
            p[0] = p[1]
            p[1].append(p[2])

    def p_astcode(self, p):
        """astcode : DEF MAIN LPAREN RPAREN LBRACE statements RBRACE EOF"""
        print("entered main")
        p[0] = ast_classes.AstCode(p[6])   

    # ---------------------------------------------------------------------#
    # statement parsers
    # ---------------------------------------------------------------------#

    def p_statement(self, p):
        """statement : vardecl
                     | assign
                     | eval """
        p[0] = p[1]

    def p_vardecl(self, p):
        """vardecl : VAR IDENT EQUAL expression COLON INT SEMICOLON"""
        p[0] = ast_classes.Vardecl(ast_classes.ExpressionVar(p[2]), p[4], p.lineno)

    def p_assign(self, p):
        """assign : IDENT EQUAL expression SEMICOLON"""
        p[0] = ast_classes.Assign(p[1], p[3])
        print(p[0])

    def p_eval(self, p):
        """eval : PRINT LPAREN expression RPAREN SEMICOLON"""
        p[0] = ast_classes.Eval(p[3])
        print("entered eval")
        print(p[0])

    # ---------------------------------------------------------------------#
    # expression parsers
    # ---------------------------------------------------------------------#

    def p_expression(self, p):
        """expression : iden
                      | numb
                      | uniop
                      | binop """
        p[0] = p[1]

    def p_iden(self, p):
        """iden : IDENT"""
        p[0] = ast_classes.ExpressionVar(p[1], p.lineno)

    def p_numb(self, p):
        """numb : NUMBER"""
        p[0] = ast_classes.ExpressionInt(p[1], p.lineno)

    def p_uniop(self, p):
        """uniop : UMINUS expression
                 | BITWISE_NOT expression"""
        p[0] = ast_classes.ExpressionUniOp(p[1], p[2])

    def p_binop(self, p):
        """binop : expression PLUS expression
                 | expression MINUS expression
                 | expression TIMES expression
                 | expression DIVIDE expression
                 | expression MODULUS expression
                 | expression BITWISE_AND expression
                 | expression BITWISE_OR expression
                 | expression BITWISE_XOR expression
                 | expression BITWISE_SHL expression
                 | expression BITWISE_SHR expression"""
        p[0] = ast_classes.ExpressionBinOp(p[2], p[1], p[3])

    def p_expression_parens(self, p):    # Remove parentheses
        """expression : LPAREN expression RPAREN"""
        p[0] = p[2]


# ------------------------------------------------------------------------------#
# main function drivers
# ------------------------------------------------------------------------------#

def run_parser(code):
    """ Runs the lexer and the parser to return a json ast"""
    lex = my_lexer.MyLexer(code)
    # print("lexer created")
    par = MyParser(lex)
    # print("start code parsing")
    astcode = par.init_parse()
    # astcode.check_syntax()
    print(astcode)


if __name__=="__main__":
    
    import argparse, sys        # Import only if running main from this module

    parser = argparse.ArgumentParser(description='Process filename.')
    parser.add_argument('filename', metavar="FILE", type=str, nargs=1)
    args = parser.parse_args(sys.argv[1:])
    tac_filename = args.filename[0]

    with open(tac_filename, 'r') as fp:
        code = fp.read()

    run_parser(code)
