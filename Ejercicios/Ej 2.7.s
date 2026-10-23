#Modifica el programa del ejercicio previo para que sume todos aquellos valores
#del vector que sean números impares, independientemente de la posición que
#ocupen en el vector, y muestre el resultado por la consola.

.data
vector: .word 7, 4, 23, 12, 6, 20, 17, 8, 3, 10
finv: 
.bss

.text
la t0,vector
la t1,finv
li s2,2
bucle:
    lw a1,0(t0)
    rem s1,a1,s2
    bnez s1,else
    add a0,a0,a1
    else:
    addi t0,t0,4
    blt t0,t1,bucle

li a7,1
ecall

li a7,10
ecall