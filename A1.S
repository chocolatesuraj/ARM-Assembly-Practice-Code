LDR R1,=A
LDR R2,=B
LDR R3,[R1]
LDR R4,[R2]
ADD R5,R3,R4
LDR R6,=C
STR R5,[R6]
SWI 0X011
.DATA
A: .WORD 5
B: .WORD 5
C: .WORD 0
.END
