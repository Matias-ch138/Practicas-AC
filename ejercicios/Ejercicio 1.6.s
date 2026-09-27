.data 
numeros:
n1: .word 3
n2: .word 2
n3: .word 25
.bss


.text
lui t0, %hi(numeros)
addi t0,t0,%lo(numeros)
lw a1,0(t0)
lw a2,4(t0)
lw a3,8(t0)
add a0,x0,a1
add a0,a0,a2
add a0,a0,a3
li a7,1
ecall
li a7,10
ecall