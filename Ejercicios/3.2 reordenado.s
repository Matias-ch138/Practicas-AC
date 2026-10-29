#Ejercicio 3.2. Toma el código del ejercicio 2.6 de la práctica anterior
#a) Ejecuta el código en la configuración C1 y calcula cuál sería el número de
#ciclos en un procesador sin segmentación del cauce de ejecución. El CPI
#será igual a 1.
#b) Ejecuta el código en la configuración C2, anota el número de ciclos y CPI.
#Calcula la mejora en rendimiento respecto a la configuración anterior.
#c) Repite el paso anterior pero con la configuración C3.
#d) Identifica las detenciones que se estén produciendo en el programa y
#reordena el código para evitarlas. Anota los ciclos y CPI de esta nueva
#versión en la configuración C3 y calcula la mejora de rendimiento.
.data
vector: .word 7, 4, 23, 12, 6, 20, 17, 8, 3, 10
finv: 
.bss

.text
la t0,vector
la t1,finv

bucle:
    lw a1,0(t0)
    addi t0,t0,8
    add a0,a0,a1
    blt t0,t1,bucle

li a7,1
ecall

li a7,10
ecall