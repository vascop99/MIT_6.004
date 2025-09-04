li a0, 10
li a1, 1
li a2, 0
while:
    blt a0, a1, end
    add a2, a2, a1
    addi a1, a1, 1
    j while
end:
    mv a0, a2
    ret
    

