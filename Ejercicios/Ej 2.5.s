#Almacenar en memoria un vector con los valores 7, 4, 23, 12, 6, 20, 17, 8,
#3, 10 y mostrar por consola la media aritmética. Para ello se ha de calcular su
#suma y también contar cuántos valores hay en el vector.

.data
vector:
    .word 7, 4, 23, 12, 6, 20, 17, 8, 3, 10
finv:
.bss
datos:
suma: .word 0
media: .word 0
.text
la t0,vector
la t1,finv

lui t2,%hi(datos)
addi t2,t2,%lo(datos)
lw a0,0(t2)
lw a1,4(t2)
li,s1,0

bucle:
    addi s1,s1,1
    lw s0,0(t0)
    add a0,a0,s0
    addi t0,t0,4
    bne t0,t1,bucle


div a1,a0,s0

sw a0,0(t2)
sw a1,4(t2)

li a7,1
lw a0,media
ecall

li a7,10
ecall

