#Estructura if

.data
valor1: .word 9
valor2: .word 8

mensaje1: .string "valor 1 es menor que valor 2"
mensaje2: .string "valor 2 es menor o igual que valor 1"

.text

lw a0,valor1
lw a1,valor2

#if(a0<a1){
#   cout<<mensaje1;
#  }else cout<<mensaje2;

bge a0,a1,else
la a0,mensaje1
j finif #Final del if
else:
    la a0,mensaje2
finif:
li a7,4
ecall

li a7,10
ecall