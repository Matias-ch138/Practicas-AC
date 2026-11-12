#Ejercicio 4.1 Almacenar en memoria un vector con los valores 7, 4, 23, 12, 6, 20, 17, 8,
#3, 10, 11, 23 y mostrar por consola la media aritmética. Para ello se ha de
#calcular su suma y también contar cuántos valores hay en el vector, como se
#indicaba en el ejercicio 2.5. A continuación, realizar las siguientes acciones:
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
li a1,0
li a0,0
bucle:
    lw s0,0(t0)
    lw s1,4(t0)
    
    addi a1,a1,2
    add a0,a0,s0
    add a0,a0,s1
    
    addi t0,t0,8
    
    bne t0,t1,bucle

div a0,a0,a1
li a7,1
ecall
li a7,10
ecall
    
    