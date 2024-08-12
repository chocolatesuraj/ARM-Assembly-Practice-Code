


   AREA    min_array, CODE, READONLY

   ENTRY

   ; Initialize registers
   MOV     r1, #0          ; Index i = 0
   LDR     r2, [r0]        ; Load the first element of the array into r2
   ADD     r0, r0, #4      ; Increment the address of the array by 4

loop_start:
   ; Compare the current element with the minimum element found so far
   LDR     r3, [r0, r1, LSL #2]
   CMP     r3, r2
   MOVLT   r2, r3          ; If r3 < r2, set r2 = r3

   ; Increment the index i
   ADD     r1, r1, #1

   ; Check if we have reached the end of the array
   CMP     r1, #ARRAY_SIZE
   BNE     loop_start

   ; Display the minimum element using SWI
   MOV     r0, #4
   MOV     r1, #1
   MOV     r7, #4
   SWI     0

   ; Terminate the program
   MOV     r0, #0
   MOV     r7, #1
   SWI     0

   ; Define the array
   ARRAY_SIZE  EQU     5
   array       DCW     3, 8, -1, 5, 2

   END


