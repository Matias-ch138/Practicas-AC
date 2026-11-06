#calcular promedio de días de los meses
.data
diasmes: .word 31,28,31,30,31,30,31,31,30,31,30,31
fin:

.text

la t0,diasmes
la t1,fin

li a0,0
li a1,0

bucle:
    lw s0,0(t0)
    add a0,a0,s0
    addi a1,a1,1
    addi t0,t0,4
    bne t0,t1,bucle
    
div a0,a0,a1
li a7,1
ecall

li a7,10
ecall