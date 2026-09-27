.data 
n1: .word 3
n2: .word 2
n3: .word 25
.bss


.text
lw a1,n1
lw a2,n2
lw a3,n3
add a0,x0,a1
add a0,a0,a2
add a0,a0,a3
li a7,1
ecall
li a7,10
ecall