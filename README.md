# CSE302

This repository contains my code for the CSE302 (Compilers) course at Ecole Polytechnique. 

The first 5 labs are solely on BX that eventually terminate into a fully functional BX compiler. After lab5, the compiler successfully handles all BX programs with CFG and SSA optimizations included.

The final lab (lab6) compiles brainfuck from source to x64asm with 7 optimizations implemented. For now, it does not handle cyclic buffer and hence programs with >30,000 unique memory point accesses will almost surely crash.
