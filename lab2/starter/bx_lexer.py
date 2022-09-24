from typing import List
from py.ply import lex as lex

class MyLexer:
    """ Class for lexing the source code """

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
        'var':      "VAR",
    }

    tokens = (
        'IDENT', 'NUMBER',
        'SEMICOLON', 'EQUAL', 'COLON', 'LPAREN', 'RPAREN', 'RBRACE', 'LBRACE', 'EOF',
        'PLUS', 'MINUS', 'TIMES', 'DIVIDE', 'MODULUS',
        'BITWISE_AND', 'BITWISE_OR', 'BITWISE_XOR', 'BITWISE_SHL', 'BITWISE_SHR', 'BITWISE_NOT',
    ) + tuple(reserved.values())

    # MACROS
    t_SEMICOLON = r';'
    t_EQUAL     = r'='
    t_COLON     = r':'
    t_LPAREN    = r'\('
    t_RPAREN    = r'\)'
    t_RBRACE    = r'\}'
    t_LBRACE    = r'\{'

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
    ident_identifier    = r'[A-Za-z_][A-Za-z0-9_]*'
    number_identifier   = r'0|[1-9][0-9]*'
    comment_identifier  = r'//.*\n?'
    newline_identifier  = r'\n+'

    @lex.TOKEN(ident_identifier)
    def t_IDENT(self, t):
        """ Returns an identifier token """
        t.type = self.reserved.get(t.value, "IDENT")
        return t

    @lex.TOKEN(number_identifier)
    def t_NUMBER(self, t):
        """ Returns a Number token """
        t.value = int(t.value)
        return t

    @lex.TOKEN(comment_identifier)       
    def t_COMMENT(self, t) -> None:
        """ Ignores all characters until newline character """

    @lex.TOKEN(newline_identifier)
    def t_newline(self, t) -> None:
        """ Ignores the newline character and augments the line number """
        t.lexer.lineno += len(t.value)

    def t_eof(self, t) -> None:
        """ EOF handler """
        pass

    def t_error(self, t) -> None:
        """ Prints an error message on unsuccessful line parsing """
        print("Illegal character '%s' at line '%s'" % (t.value[0], t.lexer.lineno))
        t.lexer.skip(1)
        sys.exit(1)

    def find_column(input, token):
        """ Finds the column number of the pointer """
        line_start = input.rfind('\n', 0, token.lexpos) + 1
        return (token.lexpos - line_start) + 1
    
    t_ignore  = ' \t\r\f\v' # A string containing ignored characters (spaces and tabs)

    def test(self) -> None:
        """ Runs the lexer to tokenize all code """
        self.lexer.input(self.code_data)
        while True:
            tok = self.lexer.token()
            if tok:
                self.token_list.append(tok)
                # print(tok)
            else:
                break


if __name__=="__main__":
    
    import argparse, sys        # Import only if running main from this module

    parser = argparse.ArgumentParser(description='Process filename.')
    parser.add_argument('filename', metavar="FILE", type=str, nargs=1)
    args = parser.parse_args(sys.argv[1:])
    tac_filename = args.filename[0]

    with open(tac_filename, 'r') as fp:
        code = fp.read()

    m = MyLexer(code)
    