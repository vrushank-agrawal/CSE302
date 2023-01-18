# Brainfuck Compiler (Source -> x64 asm)

This subdirectory contains following files:
- `/tests`: This directory contains a few tests that I ran to check the correctness of the compiler. `mandelbrot.bf` and `factor.bf` run into seg faults most likely because of non-cyclic memory buffer which is restricted to only 30000 bytes.
- `bf2x64.py`: This file contains the asm conversion of the Brainfuck AST.
- `parser_bf.py`: Initially only an interpreter, I modified this file to act as a parser for Brainfuck.
- `helper_func.c`: Contains global functions to assist in print and input operations for Brainfuck code.
- `optimize.py`: Contains 7 optimizations as described in the lab6 assignment here [Brainfuck Compiler](https://grader.dix.polytechnique.fr/agns/CSE302/TD06/2022/#the-brainfuck-language). The loop optimazations though need asm instructions and are hence further handled in `Stack` class in `bf2x64.py`.

## Usage

The program entry point is the `main()` function in `bf2x64.py` which can be called with `python3 bf2x64.py {insert .bf file path here}`. Its options are:
- `filename`: Mandatory name of the file ending with `.bf`, otherwise program will exit with failure.
- `-o [Filename]`: Optional destination file to store generated asm instructions.
- `-e`: Option to produce asm file `{filename}.s` and generate an executable `{filename}.exe`.
- default: generated asm is printed on stdout.
