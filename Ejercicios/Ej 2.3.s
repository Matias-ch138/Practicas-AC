#Mostrar por la consola los números 40 a 122 y el carácter que corresponde a cada uno
#de esos códigos, para conseguir un resultado similar al de la imagen inferior
#consulta las llamadas del sistema de Ripes para saber cómo imprimir el carácter.
.data
coma: .string ","
espacio: .string " "
codigo: .string "Código "
slash: .string " - Cáracter "
.bss
.text
li a0,40
li s0,123

bucle:
    call print
    addi a0,a0,1
    bne a0,s0,bucle

li a7,10
ecall

print:
    addi sp,sp,-12
    sw ra,0(sp)
    sw a0,4(sp)
    sw a7,8(sp)
    
    #Código
    li a7,4
    la a0,codigo
    ecall
    
    #Número
    li a7,1
    lw a0,4(sp)
    ecall
    
    #Slash
    li a7,4
    la a0,slash
    ecall
    
    #Carácter
    li a7,11
    lw a0,4(sp)
    ecall
    
    #Coma
    li a7,11
    lw a0,coma
    ecall
    lw a0,espacio
    ecall
    
    lw ra,0(sp)
    lw a0,4(sp)
    lw a7,8(sp)
    addi sp,sp,12
    
    ret 
    