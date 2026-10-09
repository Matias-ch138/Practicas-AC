#bucle suma de datos de un vector y muestra de acumulador y lo que se suma

.data
vector:
    .word 7,4,23,12,6,20,17,8,3,10
cad1: .string "Sumando actual: "
cad2: .string ", Acumulado actual: "
cad3: .string ".\n" #salto de linea
.text
li a0,0
li s0,10 #número de elementos que hay en el vector
la t0,vector

bucle:
    lw a1,0(t0)
    add a0,a0,a1
    call print 
    addi t0,t0,4 #siguiente pos vector
    addi s0,s0,-1 #restarle uno al contador
    bnez s0,bucle #condición para que sigua hasta que s0 sea igual a 0 es decir que haya recorrido todo el vector
    
li a7,1
ecall

li a7,10
ecall

#el main empieza en .text y termina en el ecall de program exited
#función fuera del main
#Entradas: a0 ->Suma acumulada, a1->Sumando actual
#Salidas: ninguna
print:
    #epilogo
    addi sp,sp,-16 #reservo espacio en la pila 16 porque tenemos que guardar 4 datos
    sw ra, 0(sp) #dirección de retorno
    #registros que se van a utilizar en la función
    sw a0, 4(sp) #acumulado
    sw a1, 8(sp) #sumando
    sw a7, 12(sp)
    
    #primera cad y sumando
    li a7,4
    la a0, cad1
    ecall
    
    lw a0, 8(sp)
    li a7,1
    ecall 
    
    #segunda cad y acumulado
    li a7,4
    la a0, cad2
    ecall
    
    lw a0, 4(sp)
    li a7,1
    ecall
    
    #salto de linea
    li a7,4
    la a0, cad3
    ecall
    
    #prologo
    lw a7, 12(sp)
    lw a1, 8(sp)
    lw a0, 4(sp)
    lw ra, 0(sp)
    addi sp,sp,16 #actualizar el puntero de la pila
    #retorno al main
    ret