.data 
n: .word 75000
.bss
.text
lw a0,n
li a7,1
ecall
li a7,10
ecall