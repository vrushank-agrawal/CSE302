import py.ply.yacc as yacc
import bx_lexer
import bx_ast_classes as ast_classes

# class not working for some reason hence
# switching to somple function defs

# class MyParser:
#     """ Class for parsing the lexer code """
    
# ---------------------------------------------------------------------#
# MACROS
# ---------------------------------------------------------------------#

bin_operator_name = {        
    '+': 'addition', 
    '-': "subtraction", 
    '*': "multiplication", 
    '/': "division", 
    '%': "modulus",
    '&': "bitwise-and", 
    '|': "bitwise-or", 
    '^': "bitwise-xor",
    '>>': "logical-shift-right", 
    '<<': "logical-shift-left",
}

uni_operator_name = {
    '~': "bitwise-negation",
    '-': "opposite", 
}

num_main = 0        # numb of main functions declared

tokens = bx_lexer.tokens

precedence = (
    ('left', 'BITWISE_OR'),
    ('left', 'BITWISE_XOR'),
    ('left', 'BITWISE_AND'),
    ('left', 'BITWISE_SHL', 'BITWISE_SHR'),
    ('left', 'PLUS', 'MINUS'),
    ('left', 'TIMES', 'DIVIDE', 'MODULUS'),
    ('right', 'UMINUS'),
    ('right', 'BITWISE_NOT'),
)

# ---------------------------------------------------------------------#
# code parsers
# ---------------------------------------------------------------------#

def p_astcode(p):
    """astcode : DEF MAIN LPAREN RPAREN LBRACE statements RBRACE 
               | empty """
    global num_main
    num_main += 1
    p[0] = ast_classes.AstCode(p[6], p.lineno(2), num_main)

def p_statements(p):
    """statements : 
                  | statements statement """
    # loop through the statements recursively
    if len(p) == 1:
        p[0] = []
    else:
        p[0] = p[1]
        p[1].append(p[2]) 

# ---------------------------------------------------------------------#
# statement parsers
# ---------------------------------------------------------------------#

def p_statement(p):
    """statement : vardecl
                 | assign
                 | eval """
    p[0] = p[1]

def p_vardecl(p):
    """vardecl : VAR IDENT EQUAL expression COLON INT SEMICOLON"""
    p[0] = ast_classes.Vardecl(ast_classes.ExpressionVar(p[2]), p[4], p.lineno(2))

def p_assign(p):
    """assign : IDENT EQUAL expression SEMICOLON"""
    p[0] = ast_classes.Assign(p[1], p[3], p.lineno(1))

def p_eval(p):
    """eval : PRINT LPAREN expression RPAREN SEMICOLON"""
    p[0] = ast_classes.Eval(p[3])

# ---------------------------------------------------------------------#
# expression parsers
# ---------------------------------------------------------------------#

def p_expression(p):
    """expression : iden
                  | numb
                  | uniop
                  | binop """
    p[0] = p[1]

def p_iden(p):
    """iden : IDENT"""
    p[0] = ast_classes.ExpressionVar(p[1], p.lineno(1))

def p_numb(p):
    """numb : NUMBER"""
    p[0] = ast_classes.ExpressionInt(p[1], p.lineno(1))

def p_uniop(p):
    """uniop : MINUS expression %prec UMINUS
             | BITWISE_NOT expression"""
    p[0] = ast_classes.ExpressionUniOp(uni_operator_name[p[1]], p[2])

def p_binop(p):
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
    p[0] = ast_classes.ExpressionBinOp(bin_operator_name[p[2]], p[1], p[3])

def p_expression_parens(p):    # Remove parentheses
    """expression : LPAREN expression RPAREN"""
    p[0] = p[2]

# ---------------------------------------------------------------------#
# misc functions
# ---------------------------------------------------------------------#

# def __init__(self, lex):
#     self.lex = lex
#     self.parser = yacc.yacc(module=self, start="astcode", debug=False)
#     self.main_defined = False

# def init_parse(self):
#     print("enter init_parse")
#     astcode = self.parser.parse(lexer=self.lex.lexer, tracking=True)
#     return astcode

def p_error(p):
    if not p:   #EOF
        return
    raise SyntaxError(f" while processing {p.type} at line {p.lineno()}")

def p_empty(p):
    'empty :'
    raise SyntaxError(f"Empty file")

# ------------------------------------------------------------------------------#
# main function drivers
# ------------------------------------------------------------------------------#

def run_parser(code) -> ast_classes.AstCode:
    """ Runs the lexer and the parser to return a json ast"""
    global num_main
    num_main = 0
    lexer = bx_lexer.lex.lex(module=bx_lexer)
    parser = yacc.yacc()
    par = parser.parse(code, lexer=lexer, tracking=True)
    return par


if __name__=="__main__":
    
    import argparse, sys        # Import only if running main from this module

    parser = argparse.ArgumentParser(description='Process filename.')
    parser.add_argument('filename', metavar="FILE", type=str, nargs=1)
    args = parser.parse_args(sys.argv[1:])
    tac_filename = args.filename[0]

    with open(tac_filename, 'r') as fp:
        code = fp.read()

    run_parser(code)
