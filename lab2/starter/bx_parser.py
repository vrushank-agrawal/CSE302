from py.ply import yacc as yacc
import bx_lexer as lexer
import bx_ast_classes as ast

class MyParser:
    """ Class for parsing the lexer code """

    def __init__(self, lexer) -> None:
        self.lexer = lexer
        self.parser = yacc.yacc(module=self)

    tokens = lexer.MyLexer.tokens + ('UMINUS',)

    precedence = (
        ('left', 'BITWISE_OR'),
        ('left', 'BITWISE_XOR'),
        ('left', 'BITWISE_AND'),
        ('left', 'BITWISE_SHL', 'BITWISE_SHR'),
        ('left', 'PLUS', 'MINUS'),
        ('left', 'TIMES', 'DIV', 'MODULUS'),
        ('left', 'UMINUS'),
        ('left', 'BITWISE_COMPL'),
    )

    # ---------------------------------------------------------------------#
    # expression parsers
    # ---------------------------------------------------------------------#

    def p_expression_ident(self, p) -> None:
        """ expression: IDENT """
        p[0] = ast.ExpressionVar(p[1])

    def p_expression_number(self, p) -> None:
        """ expression: NUMBER """
        p[0] = ast.ExpressionInt(p[1])

    def p_expression_binop(self, p) -> None:
        """ expression: expression PLUS expression
                      | expression MINUS expression
                      | expression TIMES expression
                      | expression DIV expression
                      | expression MODULUS expression
                      | expression BITWISE_AND expression
                      | expression BITWISE_OR expression
                      | expression BITWISE_XOR expression
                      | expression BITWISE_SHL expression
                      | expression BITWISE_SHR expression """
        p[0] = ast.ExpressionBinOp(p[2], p[1], p[3])

    def p_expression_uniop(self, p) -> None:
        """ expression: UMINUS expression
                      | BITWISE_COMPL expression """
        p[0] = ast.ExpressionUniOp(p[1], p[2])

    # ---------------------------------------------------------------------#
    # statement parsers
    # ---------------------------------------------------------------------#

    def p_statement_vardecl(self, p) -> None:
        """ statement: VAR IDENT EQUAL expression COLON INT SEMICOLON"""
        pass

    def p_statement_assign(self, p) -> None:
        """ statement: IDENT EQUAL expression SEMICOLON"""
        p[0] = ast.Assign(p[1], p[3])

    def p_statement_print(self, p) -> None:
        """ statement: IDENT EQUAL expression SEMICOLON"""
        p[0] = ast.Eval(p[3])

    # ---------------------------------------------------------------------#
    # #TODO code parsers
    # ---------------------------------------------------------------------#

    def p_statements(self, p) -> None:
        """ statements: statements statement
                      | """

    def p_astcode(self, p) -> None:
        """ astcode: DEF MAIN LPAREN RPAREN LBRACE statements RBRACE EOF """



    # ---------------------------------------------------------------------#
    # error parsers
    # ---------------------------------------------------------------------#

    def p_error(self, p) -> None:
        if not p: return    # EOF
        print(f"Syntax error while processing {p.type}")

# ------------------------------------------------------------------------------#
# main function drivers
# ------------------------------------------------------------------------------#

def run_parser(code):
    """ Runs the lexer and the parser to return a json ast """
    lex = lexer.MyLexer(code)
    par = MyParser(lex)


if __name__=="__main__":
    
    import argparse, sys        # Import only if running main from this module

    parser = argparse.ArgumentParser(description='Process filename.')
    parser.add_argument('filename', metavar="FILE", type=str, nargs=1)
    args = parser.parse_args(sys.argv[1:])
    tac_filename = args.filename[0]

    with open(tac_filename, 'r') as fp:
        code = fp.read()

    run_parser(code)
