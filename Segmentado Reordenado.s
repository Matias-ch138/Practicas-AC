#Suma de un vector de números
#Apartado del procesador 5-Stage (tiene detención de riesgos y bypass)
.data

vector: .word 1,2,3,4,5,6,7,8,9,10

.text
lui t0,%hi(vector)
addi t0,t0,%lo(vector)
li s0,10
li a0,0
bucle:
    lw a1,0(t0)
    addi s0,s0,-1 #No introducimos nop pero si utilizamos el ciclo con otra instrucción
    add a0,a0,a1
    addi t0,t0,4
    bnez s0,bucle
li a7,1
ecall

li a7,10
ecall 