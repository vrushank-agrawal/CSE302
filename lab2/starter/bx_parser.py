from py.ply import yacc as yacc

class MyParser:
    """ Class for parsing the lexer code """

    def __init__(self, lexer) -> None:
        self.lexer = lexer
        self.parser = yacc.yacc(module=self)

    




if __name__=="__main__":
    
    import argparse, sys        # Import only if running main from this module

    parser = argparse.ArgumentParser(description='Process filename.')
    parser.add_argument('filename', metavar="FILE", type=str, nargs=1)
    args = parser.parse_args(sys.argv[1:])
    tac_filename = args.filename[0]

    with open(tac_filename, 'r') as fp:
        code = fp.read()

    # m = MyLexer(code)
    