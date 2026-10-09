#bucle suma de datos de un vector

.data
vector:
    .word 7,4,23,12,6,20,17,8,3,10
    
.text
li a0,0
li s0,10 #número de elementos que hay en el vector
la t0,vector

bucle:
    lw a1,0(t0)
    add a0,a0,a1
    
    addi t0,t0,4 #siguiente pos vector
    addi s0,s0,-1 #restarle uno al contador
    bnez s0,bucle #condición para que sigua hasta que s0 sea igual a 0 es decir que haya recorrido todo el vector
    
li a7,1
ecall

li a7,10
ecall