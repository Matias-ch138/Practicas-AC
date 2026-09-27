.data 

.bss


.text
li a1,23
li a2, 4
div a0,a1,a2
li a7,1
ecall
li a7,11
li a0,32
ecall
rem a0,a1,a2
li a7,1
ecall
li a7,10
ecall