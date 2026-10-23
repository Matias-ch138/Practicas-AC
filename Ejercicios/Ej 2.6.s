#Almacenar en memoria un vector con los valores 7, 4, 23, 12, 6, 20, 17, 8,
#3, 10 y escribir un programa que muestre por consola la suma de aquellos
#que ocupan posiciones impares, asumiendo que al primer 7 le corresponde la
#posición 1 (impar).

.data
vector: .word 7, 4, 23, 12, 6, 20, 17, 8, 3, 10
finv: 
.bss

.text
la t0,vector
la t1,finv

bucle:
    lw a1,0(t0)
    add a0,a0,a1
    addi t0,t0,8
    blt t0,t1,bucle

li a7,1
ecall

li a7,10
ecall