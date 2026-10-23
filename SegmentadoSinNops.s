#Suma de un vector de números
#Apartado del procesador 5-Stage processor w/o forwarding unit
.data

vector: .word 1,2,3,4,5,6,7,8,9,10

.text
lui t0,%hi(vector)
addi t0,t0,%lo(vector)
li s0,10
li a0,0
bucle:
    lw a1,0(t0)
    add a0,a0,a1
    addi t0,t0,4
    addi s0,s0,-1
    bnez s0,bucle
    
li a7,1
ecall

li a7,10
ecall 