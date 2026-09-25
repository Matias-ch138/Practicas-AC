#Problema para calcular cuantas galletas necesitamos para cubrir cierta superficie y si hacen falta adicionales

#inizializar datos

.data
 
datos: 

largo: .word 24
ancho: .word 20
galleta: .word 6

#reservar espacio en memoria de datos no inicializados

.bss

resultados:

superficie: .word 0
ngalletas: .word 0
galletamas: .word 0

#código

.text 

lui t0,%hi(datos) #%hi(datos) extrae los 20 bits de mayor peso de datos
addi t0,t0, %lo(datos) #%lo(datos) extrae los 12 bits de menor peso de datos

lui t1,%hi(resultados)
addi t1,t1, %lo(resultados)

#carga de datos en los registros

lw a0, 0(t0)
lw a1, 4(t0)

#multiplicación y guardado de esa multiplicación en a0

mul a0, a0,a1

#mover el dato de a0 a superficie por medio del puntero en t1

sw a0,0(t1) #sw a0,0,t1 es lo mismo

#calculo del número de galletas que necesitamos

lw a1, 8(t0)
div a2,a0,a1
sw a2,4(t1)

#calculo del resto para saber si la división ha sido exacta

rem a2,a0,a1
sw a2,8(t1)

#llamadas al sistema para terminar el programa (MIRAR EL SYSTEM CALLS)

#guardar un dato entero de 32 bits en un registro

li a7,10

#realizar la system call

ecall
  
#Procesador de un solo ciclo
