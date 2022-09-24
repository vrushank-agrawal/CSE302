from py.ply import yacc as yacc
import bx_lexer as my_lexer
import bx_ast_classes as ast

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
        self.lexer = lex
        self.parser = yacc.yacc(module=self, start="astcode")

    def p_error(self, p):
        if not p: return    # EOF
        print(f"Syntax error while processing {p.type}")

    def init_parse(self):
        print("enter init_parse")
        return self.parser.parse(lexer=self.lexer.lexer, tracking=True)
 
    # ---------------------------------------------------------------------#
    # code parsers
    # ---------------------------------------------------------------------#

    def p_statements(self, p):
        """statements : statements statement
                       |"""
        # loop through the statements recursively
        if len(p) == 1:
            p[0] = []
        else:
            p[0] = p[1]
            p[1].append(p[2])

    def p_astcode(self, p):
        """astcode : DEF MAIN LPAREN RPAREN LBRACE statements RBRACE EOF"""
        print("entered main")
        p[0] = ast.AstCode(p[6])   

    # ---------------------------------------------------------------------#
    # statement parsers
    # ---------------------------------------------------------------------#

    def p_statement_vardecl(self, p):
        """statement : VAR IDENT EQUAL expression COLON INT SEMICOLON"""
        p[0] = ast.Vardecl(ast.ExpressionVar(p[2]), p[4])

    def p_statement_assign(self, p):
        """statement : IDENT EQUAL expression SEMICOLON"""
        p[0] = ast.Assign(p[1], p[3])
        print(p[0])

    def p_statement_eval(self, p):
        """statement : PRINT LPAREN expression RPAREN SEMICOLON"""
        p[0] = ast.Eval(p[3])
        print("entered eval")
        print(p[0].jsonify)

    # ---------------------------------------------------------------------#
    # expression parsers
    # ---------------------------------------------------------------------#

    def p_expression_ident(self, p):
        """expression : IDENT"""
        p[0] = ast.ExpressionVar(p[1])

    def p_expression_number(self, p):
        """expression : NUMBER"""
        p[0] = ast.ExpressionInt(p[1])

    def p_expression_uniop(self, p):
        """expression : UMINUS expression
                       | BITWISE_NOT expression"""
        p[0] = ast.ExpressionUniOp(p[1], p[2])

    def p_expression_binop(self, p):
        """expression : expression PLUS expression
                       | expression MINUS expression
                       | expression TIMES expression
                       | expression DIVIDE expression
                       | expression MODULUS expression
                       | expression BITWISE_AND expression
                       | expression BITWISE_OR expression
                       | expression BITWISE_XOR expression
                       | expression BITWISE_SHL expression
                       | expression BITWISE_SHR expression"""
        p[0] = ast.ExpressionBinOp(p[2], p[1], p[3])

    def p_expression_parens(self, p):    # Remove parentheses
        """expression : LPAREN expression RPAREN"""
        p[0] = p[2]


# ------------------------------------------------------------------------------#
# main function drivers
# ------------------------------------------------------------------------------#

def run_parser(code):
    """ Runs the lexer and the parser to return a json ast"""
    lex = my_lexer.MyLexer(code)
    par = MyParser(lex)
    astcode = par.init_parse()
    astcode.check_syntax()
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
