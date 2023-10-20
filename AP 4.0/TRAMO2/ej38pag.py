#Escribir un programa que permita ingresar un número entero n. Debe mostrar los primeros 10 múltiplos de n.

n = 1
cant = 11
salto = 1

for n in range(n,cant,salto):
    print(5*n, end = " ", sep = "-")