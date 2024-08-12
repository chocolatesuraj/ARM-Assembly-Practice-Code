
; Initialize registers
    MOV r0, #256         ; Number of words to transfer
    LDR r1, =X           ; Source address
    LDR r2, =Y           ; Destination address
    
; Transfer loop
transfer_loop:
    LDMIA r1!, {r3-r10}  ; Load 8 words from source address
    STMIA r2!, {r3-r10}  ; Store 8 words to destination address
    SUBS r0, r0, #8      ; Decrement word count
    BNE transfer_loop    ; Loop until all words are transferred
    
; End of program
    swi 0x011

X:  ; Source data
    .WORD 0x11111111, 0x22222222, 0x33333333, 0x44444444
    ; (256 words total)
Y:  ; Destination buffer (initialized to zeros)
    .SPACE 1024



