ldr r0, =A
ldr r1, =B
mov r2,#5

loop:
ldrh r3, [r0], #2
strh r3, [r1], #4
subs r2, r2, #1
bne loop

.data
A:.hword 1, 2, 3, 4, 5
B:.hword