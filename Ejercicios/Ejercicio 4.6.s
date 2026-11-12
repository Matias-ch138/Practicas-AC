#Partiendo del mismo programa del ejercicio 4.4, repetir los pasos indicados pero
#aplicando un desenrollado del bucle con factor cuatro.


.data
vector: .word 7,4,23,12,6,20,17,8,3,10,11,23
finv:

.text
la t0,vector
la t1,finv
li a0,0
li a1,0
li a2,2
bucle:
    lw s0,0(t0)
    lw s1,4(t0)
    lw s2,8(t0)
    lw s5,12(t0)
    
    rem a1,s0,a2
    rem a3,s1,a2
    rem s4,s2,a2
    rem s7,s5,a2
    
    mul a4,a1,s0
    mul a5,a3,s1
    mul a6,s4,s2
    mul s8,s7,s5
    
    add a0,a0,a4
    add a0,a0,a5
    add a0,a0,a6
    add a0,a0,s8
   
    addi t0,t0,16
    bne t0,t1,bucle
    
li a7,1
ecall

li a7,10
ecall