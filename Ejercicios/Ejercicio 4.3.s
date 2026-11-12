#Partiendo del mismo programa del ejercicio 4.1, repetir los pasos indicados pero
#aplicando un desenrollado del bucle con factor cuatro.

.data
vector: .word 7,4,23,12,6,20,17,8,3,10,11,23
finv:

.text
la t0,vector
la t1,finv
li a1,0
li a0,0
bucle:
    lw s0,0(t0)
    lw s1,4(t0)
    lw s2,8(t0)
    lw s3,12(t0)
    
    addi a1,a1,4
    add a0,a0,s0
    add a0,a0,s1
    add a0,a0,s2
    add a0,a0,s3
    
    addi t0,t0,16
    
    bne t0,t1,bucle

div a0,a0,a1
li a7,1
ecall
li a7,10
ecall