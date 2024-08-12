    MOV R0, #0
    MOV R1, #1
    MOV R2, #6
L1: ADD R0, R0, R1
    ADD R1, R1, #1
	CMP R1, R2
	BLT L1
	