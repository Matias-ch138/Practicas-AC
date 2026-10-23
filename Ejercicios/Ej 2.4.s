#Imprime por la consola las tablas de multiplicar de los números a 1 a 10 con un
#aspecto similar al de la imagen inferior.

.data
igual: .string "= "
multiplicacion: .string " x "
espacio: .string ", " 
.bss 
.text
li s0,0
li s2,10
bucle:
    li s1,0
    addi s0,s0,1
    bucle1:
        addi s1,s1,1
        mul a0,s0,s1
        call print
        bne s1,s2,bucle1
        bne s0,s2,bucle
        
        
li a7,10
ecall

print:
    addi sp,sp,-20
    sw ra,0(sp)
    sw a0,4(sp)
    sw a7,8(sp)
    sw s0,12(sp)
    sw s1,16(sp)
    
    li a7,1
    lw a0,12(sp)
    ecall
    
    li a7,4
    la a0,multiplicacion
    ecall
    
    li a7,1
    lw a0,16(sp)
    ecall
    
    li a7,4
    la a0,igual
    ecall
    
    li a7,1
    lw a0,4(sp)
    ecall
    
    li a7,4
    la a0,espacio
    ecall
    
    lw ra,0(sp)
    lw a0,4(sp)
    lw a7,8(sp)
    lw s0,12(sp)
    lw s1,16(sp)
    addi sp,sp,20
    
    ret