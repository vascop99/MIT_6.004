li t0, 5
li t1, 1
li t2, 4
li t3, 2
li t4, 20
li t5, -1
li t6, 0
li, a0, 0x10000000

sw t0, 0(a0)
sw t1, 4(a0)
sw t2, 8(a0)
sw t3, 12(a0)
sw t4, 16(a0)
sw t5, 20(a0)
sw t6, 24(a0)

li a1, 7
while:
    li a2, 0
    li a3, 1
    mv a6, a0
    for:
        beq a3, a1, compare
        lw a4, 0(a6)
        lw a5, 4(a6)
        bge a5, a4, continue
        sw a4, 4(a6)
        sw a5, 0(a6)
        li a2, 1
        continue:
        addi a6, a6, 4
        addi a3, a3, 1
        j for
    compare:
    addi a1, a1, -1
    bnez a2, while
         
        
        



