#Almacenar en memoria el vector de valores 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
#11, 12, 13, 14, 15, 16. Escribir un programa que lo trate como una matriz de
#4×4, como en el listado de la derecha, y calcule la suma de cada una de las filas y
#las muestre por consola

.data
vector: .word 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16

.bss
    
.text
la s0,vector
li s1,4
li t0,0
add t2,t2,s0
for_i:
    bge t0,s1,fin
    li t1,0
    li s2,0
for_j:
    bge t1,s1,next_i
    lw a0,0(s0)
    add s2,s2,a0
    addi t1,t1,1
    addi s0,s0,4
    j for_j
next_i:
    addi t0,t0,1
    li a7,1
    mv a0,s2
    ecall
    j for_i
    fin: 

li a7,1
ecall

li a7,10
ecall