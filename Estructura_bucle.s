#bucle suma de datos de un vector

.data
vector:
    .word 7,4,23,12,6,20,17,8,3,10
finv:
    
.text
li a0,0
la t0,vector
la t1,finv #dirección final del vector

bucle:
    lw a1,0(t0)
    add a0,a0,a1
    
    addi t0,t0,4 #siguiente pos vector
    blt t0,t1,bucle #condición para que sigua hasta que llegue al final del vector
    
li a7,1
ecall

li a7,10
ecall