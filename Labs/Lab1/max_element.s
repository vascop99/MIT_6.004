li, t0, 11
li, t1, 8
li, t2, 24
li, t3, 76
li, t4, 16
li, t5, 3
li, t6, 7
li, a0, 0x10000000

sw, t0, 0(a0)
sw, t1, 4(a0)
sw, t2, 8(a0)
sw, t3, 12(a0)
sw, t4, 16(a0)
sw, t5, 20(a0)
sw, t6, 24(a0)

#p = a0 
#n = a1 
#largest_so_far = a2
#w = a3

li a1, 7

maximum:
    li a2, 0
    while:
        beqz a1, end
        lw a3, 0(a0)
        ble a3, a2, continue
        mv a2, a3
        continue:
        addi a0, a0, 4
        addi a1, a1, -1
        j while
    end:
        mv a0, a2
        ret
















