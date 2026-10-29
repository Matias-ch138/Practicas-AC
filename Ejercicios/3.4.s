#Toma el código del ejercicio 2.1 de la práctica anterior. Activa la configuración
#5-stage processor w/o forwarding or hazard unit. Modifica el código introduciendo las instrucciones nop que garanticen una correcta ejecución del
#programa.

.data
valorf: .word 1000
.text
lui t0,%hi(valorf)
nop
nop
addi t0,t0,%lo(valorf)
nop
nop
lw a1,0(t0)
bucle:
    addi a0,a0,1
    nop
    nop
    bne a0,a1,bucle


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
