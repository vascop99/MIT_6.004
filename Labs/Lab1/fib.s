#Compute the nth fibonacci number (assume n >= 0)
li a0, 10
fib:
    li t0, 2
    blt a0, t0, fib_done
    addi sp, sp, -8
    sw ra, 4(sp)
    sw s0, 0(sp)
    mv s0, a0
    addi a0, a0, -1
    call fib
    mv t0, s0
    mv s0, a0
    addi a0, t0, -2
    call fib
    add a0, s0, a0
    lw s0, 0(sp)
    lw ra, 4(sp)
    addi sp, sp, 8
fib_done:
    beq ra, zero, exit
    ret
exit:
    




