#Usando el mismo vector del ejercicio 2.6, escribe un programa para buscar el
#menor y el mayor valor almacenándolos en a0 y a1, respectivamente. Muestra
#ambos valores por la consola.

.data
vector: .word 7, 4, 23, 12, 6, 20, 17, 8, 3, 10
finv: 
espacio: .string " y "
.bss

.text
la t0,vector
la t1,finv
lw a0,0(t0)

bucle:
    lw s0,0(t0)
    bge s0,a0,else
    lw a0,0(t0)
    else:
    blt s0,a1,else1
    lw a1,0(t0)
    else1:
    addi t0,t0,4
    blt t0,t1,bucle

li a7,1
ecall
li a7,4
la a0,espacio
ecall
li a7,1
mv a0,a1
ecall

li a7,10
ecall