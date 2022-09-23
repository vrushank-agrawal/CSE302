import argparse, sys, json
from typing import List
from py.ply import lex as lex

lst = []

class MyLexer(object):

    def __init__(self, code: str) -> None:
        self.lexer = lex.lex(module=self)
        self.code_data: str = code 
        self.token_list: List = []
        self.test()

    reserved = {
        'print':    "PRINT",
        'def':      "DEF",
        'main':     "MAIN",
        'int':      "INT",
        'var':      "Var"
    }

    # List of token names.   This is always required
    tokens = (
        'IDENT', 'NUMBER',
        'SEMICOLON', 'EQUAL', 'COLON', 'LPAREN', 'RPAREN', 'RBRACE', 'LBRACE', 'EOF',
        'PLUS', 'MINUS', 'TIMES', 'DIVIDE', 'MODULUS',
        'BITWISE_AND', 'BITWISE_OR', 'BITWISE_XOR', 'BITWISE_SHL', 'BITWISE_SHR', 'BITWISE_NOT'
    ) + tuple(reserved.values())

    # MACROS
    t_SEMICOLON = r';'
    t_EQUAL     = r'='
    t_COLON     = r':'
    t_LPAREN    = r'\('
    t_RPAREN    = r'\)'
    t_RBRACE    = r'\{'
    t_LBRACE    = r'\}'

    t_PLUS      = r'\+'
    t_MINUS     = r'-'
    t_TIMES     = r'\*'
    t_DIVIDE    = r'/'
    t_MODULUS   = r'%'

    t_BITWISE_AND   = r'&'
    t_BITWISE_OR    = r'\|'
    t_BITWISE_XOR   = r'\^'
    t_BITWISE_SHL   = r'<<'
    t_BITWISE_SHR   = r'>>'
    t_BITWISE_NOT   = r'~'

    # For token identifiers
    id_identifier    = r'[A-Za-z_][A-Za-z0-9_]*'
    num_identifier   = r'0|[1-9][0-9]*'

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

    def t_COMMENT(self, t) -> None:
        """ Ignores all characters until newline character """
        r'//.*\n?'

    def t_eof(self, t) -> None:
        """ EOF handler """
        return None

    def find_column(input, token):
        """ Finds the column number of the pointer """
        line_start = input.rfind('\n', 0, token.lexpos) + 1
        return (token.lexpos - line_start) + 1

    def t_error(self, t) -> None:
        """ Prints an error message on unsuccessful line parsing """
        if t.value[0] == '\n': print("newline")
        print("Illegal character '%s' at line '%s'" % (t.value[0], t.lexer.lineno))
        t.lexer.skip(1)
        sys.exit(1)

    def t_newline(self, t) -> None:
        """ Ignores the newline character and augments the line number """
        r'\n+'
        t.lexer.lineno += len(t.value)

    # A string containing ignored characters (spaces and tabs)
    t_ignore  = ' \t\r\f\v'

    def test(self) -> None:
        """ Runs the lexer to tokenize all code """
        self.lexer.input(self.code_data)
        while True:
            tok = self.lexer.token()
            if tok:
                self.token_list.append(tok)
                print(tok)



if __name__=="__main__":

    parser = argparse.ArgumentParser(description='Process filename.')
    parser.add_argument('filename', metavar="FILE", type=str, nargs=1)
    args = parser.parse_args(sys.argv[1:])
    tac_filename = args.filename[0]

    with open(tac_filename, 'r') as fp:
        code = fp.read()

    # print(code)

    m = MyLexer(code)
    # m.test(code)
    