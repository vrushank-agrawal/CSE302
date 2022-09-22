import argparse, sys, json
from tokenize import Token
from py.ply import lex as lex

lst = []

class MyLexer(object):

    reserved = {
        'print':    "PRINT",
        'def':      "DEF",
        'main':     "MAIN",
        'int':      "INT"
    }

    # List of token names.   This is always required
    tokens = (
        'IDENT', 'NUMBER',
        'SEMICOLON', 'EQUAL', 'LPAREN', 'RPAREN', 'COLON', 'RBRACE', 'LBRACE',
        'PLUS', 'MINUS', 'TIMES', 'DIVIDE', 'MODULUS', 'OPPOSITE',
        'BITWISE_AND', 'BITWISE_OR', 'BITWISE_XOR', 'BITWISE_SHL', 'BITWISE_SHR', 'BITWISE_NOT'
    ) + tuple(reserved.values())

    # MACROS
    t_SEMICOLON = r'\;'
    t_EQUAL     = r'\='
    t_LPAREN    = r'\('
    t_RPAREN    = r'\)'
    t_COLON     = r'\:'
    t_RBRACE    = r'\{'
    t_LBRACE    = r'\}'

    t_PLUS      = r'\+'
    t_MINUS     = r'-'
    t_TIMES     = r'\*'
    t_DIVIDE    = r'/'
    t_MODULUS   = r'\%'
    t_OPPOSITE  = r'\-'

    t_BITWISE_AND   = r'\&'
    t_BITWISE_OR    = r'\|'
    t_BITWISE_XOR   = r'\^'
    t_BITWISE_SHL   = r'\<\<'
    t_BITWISE_SHR   = r'\>\>'
    t_BITWISE_NOT   = r'\~'

    # For token identifiers
    zero             = r'(0)'
    digit            = r'([0-9])'
    nonzero_digit    = r'([1-9])'
    nondigit         = r'([A-Za-z])'
    underscore       = r'\_'
    id_identifier    = r'(' + nondigit + r'(' + digit + r'|' + nondigit + r'|' + underscore + r')*)'
    num_identifier   = r'(' + zero + r'|' + r'(' + nonzero_digit + r'(' + digit + r')*))'

    @lex.TOKEN(id_identifier)
    def t_IDENT(self, t):
        """ Returns an identifier token """
        t.type = self.reserved.get(t.value, "IDENT")
        return t

    @lex.TOKEN(num_identifier)
    def t_NUMBER(self, t):
        """ Returns a Number token """
        t.value = int(t.value)
        return t

    # A string containing ignored characters (spaces and tabs)
    t_ignore  = ' \t'

    def t_COMMENT(self, t):
        """ Ignores all characters until newline character """
        r'//.*\n'

    def t_newline(self, t):
        """ Ignores the character and augments the line number """
        r'\n+'
        t.lexer.lineno += len(t.value)

    def find_column(input, token):
        """ Finds the column number of the pointer """
        line_start = input.rfind('\n', 0, token.lexpos) + 1
        return (token.lexpos - line_start) + 1

    def t_error(self, t):
        """ Prints an error message on unsuccessful line parsing """
        print("Illegal character '%s' at line '%s'" % (t.value[0], t.lexer.lineno))
        t.lexer.skip(1)
        sys.exit(1)

    def build(self,**kwargs):
        """ Function to buld the lexer """
        self.lexer = lex.lex(module=self, **kwargs)
    
    def test(self, data):
        """ Runs the lexer to tokenize all code """
        self.lexer.input(data)
        while True:
             tok = self.lexer.token()
             if tok:
                lst.append(tok)
                print(tok)



if __name__=="__main__":

    parser = argparse.ArgumentParser(description='Process filename.')
    parser.add_argument('filename', metavar="FILE", type=str, nargs=1)
    args = parser.parse_args(sys.argv[1:])
    tac_filename = args.filename[0]

    with open(tac_filename, 'r') as fp:
        code = fp.read()

    # print(code)

    m = MyLexer()
    m.build()
    m.test(code)
    