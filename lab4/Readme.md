# Lab4

This Lab contains multiple functions, int, and bool support for assembly creation. CFG optimizations are also implemented automatically.

A file can be compiled with the following command `python3 bxcc.py ../examples/simple.bx`. This command creates a `.serial.json` (CFG optimized tac code), `.s` (x64 assembly), and `.exe` (executable) files in the same directory as the original file. The `.exe` file can be run with `./simple.exe` command in linux in the same directory as the file `simple.exe`.

The `bxcc.py` file supports the following flags:

- `--keep-tac`: Saves the basic unopimitzed TAC file in json format
- `--stop-tac`: Stops the compilation until TAC conversion before CFG optimization
- `--compile-tac`: Compiles a tac file (`.tac.json` format) into assembly
- `--stop-cfg`: Stops comilation process after CFG and saves the optimized TAC in `.serial.json` file format.
- `--no-cfg`: Compiles the code without CFG optimization (implemented automatically otherwise)
