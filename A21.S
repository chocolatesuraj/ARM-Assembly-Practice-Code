.DATA
A: .WORD 1,2,3,4,5,6,7,8
B: .WORD 0,0,0,0,0,0,0,0
.TEXT
   LDR R0,=A
   LDR R1,=B
  
   LDMIA R0!,{R3-R10}
   STMFA R13!,{R3-R10}
  
   LDMIA R1!,{R3-R10}
   LDMFA R13!,{R3-R10}
   
   SWI 0X011