#Escribir un programa que permita leer dos números A y B (enteros positivos). Calcular el producto A * B por sumas sucesivas e imprimir el resultado.

#Ejemplo:

#4*3 = 4 + 4 + 4 (4 sumado 3 veces).
#3*4 = 3 + 3 + 3 + 3 (3 sumado 4 veces).

numA = int(input("ingrese un numero"))
numB = int(input("ingrese otro numero"))
resultado = 0
for n in range(numB):
    resultado += numA
print(f"el resultado es {resultado}")