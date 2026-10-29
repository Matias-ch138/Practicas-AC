#Toma el código del ejercicio 2.2 de la práctica anterior y repite el trabajo indicado
#para el 3.4.

.data

.bss

.text
li a0,0
li a1,1000
li s1,2
bucle:
rem s0,a1,s1
nop
nop
bne s0,zero,else
j finif
else:
add a0,a0,a1
finif:
addi a1,a1,-1
bnez a1,bucle

li a7,1
nop
nop
nop
ecall

li a7,10
nop
nop
nop
ecall