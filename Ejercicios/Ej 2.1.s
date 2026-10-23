#Sumar los valores 1 a 1000, acumulando la suma en el registro a0, y mostrar el
#resultado por la consola.
.data
valorf: .word 1000
.text
lw a1,valorf
bucle:
    addi a0,a0,1
    bne a0,a1,bucle

li a7,1
ecall

li a7,10
ecall
    