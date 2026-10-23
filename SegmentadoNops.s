#Suma de un vector de números
#Las detenciones las vemos en el diagrama del pipeline en el apartado de procesador
#Procesador 5-stage processor w/o forwarding or hazard detection
.data

vector: .word 1,2,3,4,5,6,7,8,9,10

.text
lui t0,%hi(vector)
nop #Detencion/Interrupción de un ciclo
nop
addi t0,t0,%lo(vector)
li s0,10
li a0,0
bucle:
    lw a1,0(t0)
    nop
    nop
    add a0,a0,a1
    addi t0,t0,4
    addi s0,s0,-1
    nop
    bnez s0,bucle
    
li a7,1
nop 
nop
nop
ecall

li a7,10
nop
nop
nop
ecall 