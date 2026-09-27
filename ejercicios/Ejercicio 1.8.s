.data 

.bss
resultados:
    resultado: .word 0
    resto: .word 0

.text
lui t0, %hi(resultados)
addi,t0,t0,%lo(resultados)
li a1,23
li a2, 4
div a0,a1,a2
sw a0,0(t0)
rem a0,a1,a2
sw a0,4(t0)
li a7,10
ecall