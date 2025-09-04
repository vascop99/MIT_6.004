li a0, 9
li t0, 1

while:
    beq a0, t0, end
    if:
        andi a1, a0, 1
        bnez a1, else
        then:
            srai a0, a0, 1
            j while
    else:
        slli a2, a0, 1
        add a0, a2, a0
        addi a0, a0, 1
        j while
end: 