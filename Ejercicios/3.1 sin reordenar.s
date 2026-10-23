#Toma el código del ejercicio 2.5 de la práctica anterior y lleva a cabo el siguiente
#trabajo:
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
vector:
    .word 7, 4, 23, 12, 6, 20, 17, 8, 3, 10
finv:
.bss
datos:
suma: .word 0
media: .word 0
.text
la t0,vector
la t1,finv

lui t2,%hi(datos)
addi t2,t2,%lo(datos)
lw a0,0(t2)
lw a1,4(t2)
li,s1,0

bucle:
    addi s1,s1,1
    lw s0,0(t0)
    add a0,a0,s0
    addi t0,t0,4
    bne t0,t1,bucle


div a1,a0,s0

sw a0,0(t2)
sw a1,4(t2)

li a7,1
lw a0,media
ecall

li a7,10
ecall