	; FIND THE SUM OF ALL THE POSITIVE NUMBERS USING HALF WORD
	LDR R1,=A ; STARTING ADDRESS OF THE ARRAY
	LDR R5,=SUM
	MOV R0,#0 ; COUNT REGISTER
	MOV R2,#0 ; INTERMEDAIRY RESULT
	SUB R1, R1, #1
   
LOOP:LDRB R3,[R1,#1]!
     MOVS R4,R3,LSL #1
	 BCS L1
	 ADD R2, R2, R3
L1:	 ;ADD R1,R1,#2
     ADD R0,R0,#1
     TEQ R0,#10
	 BNE LOOP
	 STRH R2,[R5]

     SWI 0X011

	.DATA
  A: .BYTE 0XB0,0x10,0XA0,0x20,0X30,0xE0,0X40,0xF0,0X50,0xC0
SUM: .BYTE 0

