.DATA
A: .WORD 1,2,3,4,5,6,7,8,9
B: .WORD 0,0,0,0,0,0,0,0,0

.TEXT
	LDR R1,=A
	LDR R2,=B
	MOV R3,#9   ; COUNT
L1:	LDR R4,[R1],#4
	STR R4,[R2],#4
	SUB R3,R3,#1
	CMP R3,#0
	BNE L1
	SWI 0X011
	
	
	
	
	MOV R4,R2
	
    SWI 0X011
	
	