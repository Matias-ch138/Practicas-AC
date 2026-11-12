#Almacenar en memoria un vector con los valores 7, 4, 23, 12, 6, 20, 17,
#8, 3, 10, 11, 23 y mostrar por consola la suma de los números impares. A
#continuación, realizar las siguientes acciones:
#a Ejecuta el programa y anota el número de ciclos y CPI.
#b Examina el cronograma de ejecución para identificar dónde se producen
#los riesgos de control.
#c Aplica un desenrollado de factor dos, ejecuta el programa y anota ciclos y
#CPI.
#d Examina el cronograma de ejecución para identificar dónde aparecen riesgos
#de datos.
#e Aplica reordenado de código para evitar todos los riesgos de datos posibles,
#ejecuta el programa y anota ciclos y CPI.
#f Calcula la ganancia de rendimiento obtenida con cada versión del programa
#respecto a la original.

.data
vector: .word 7,4,23,12,6,20,17,8,3,10,11,23
finv:

.text
la t0,vector
la t1,finv
li a0,0
li a1,0
li a2,2
bucle:
    lw s0,0(t0)
    lw s1,4(t0)
    
    rem a1,s0,a2
    rem a3,s1,a2
    
    mul a4,a1,s0
    mul a5,a3,s1
    
    add a0,a0,a4
    add a0,a0,a5
   
    addi t0,t0,8
    bne t0,t1,bucle
    
li a7,1
ecall

li a7,10
ecall