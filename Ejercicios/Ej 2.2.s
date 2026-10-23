#suma de todos los números impares del 1 al 1000
.data

.bss

.text
li a0,0
li a1,1000
li s1,2
bucle: 
rem s0,a1,s1
bne s0,zero,else
j finif
else:
add a0,a0,a1
finif:
addi a1,a1,-1
bnez a1,bucle

li a7,1
ecall

li a7,10
ecall