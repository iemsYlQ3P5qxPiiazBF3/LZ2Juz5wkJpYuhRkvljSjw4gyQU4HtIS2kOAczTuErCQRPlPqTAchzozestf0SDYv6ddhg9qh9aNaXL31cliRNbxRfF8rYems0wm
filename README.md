```
Instructions:

XOR,VAR1,VAR2: XOR VAR1 with VAR2 into VAR1
ADD,VAR1,VAR2: ADD VAR2 to VAR1
DEF,VAR1,STR: Write STR to VAR1
SUB,VAR1,VAR2: SUBtract VAR2 from VAR1 into VAR1
MUL,VAR1,VAR2: MULtiply VAR1 with VAR2 into VAR1
DIV,VAR1,VAR2: DIVide VAR1 by VAR2 into VAR1
WNT,VAR1,STR: While VAR1 NoT STRING
DNE: Close WNT
NOP: Do nothing
EQU,VAR1,VAR2: If VAR1 is EQUal to VAR2 then do all until CEQ
CEQ: Close EQu
DIS: DISplay variable
RNG,VAR1,INT: Write /dev/urandom mod INT to VAR1
ILT,VAR1,VAR2: If VAR1 Less Than VAR2 then do all until CEQ
IGT,VAR1,VAR2: If VAR1 Greater Than VAR2 then do all until CEQ

Variable names can be anything that's valid in bash
Variables can be any integer from -18446744073709551615 to 18446744073709551615 (2^64-1), or strings
```
