#Escribir un programa que lea números enteros hasta que se la suma de éstos sea mayor que 100, y muestre la cantidad de números ingresados.

total = 0
cant = 0

while total <= 100:
    numA = int(input("Ingrese un número: "))
    if numA == 0:
        break
    total += numA
    cant += 1

print(f"La cantidad de números ingresados fue {cant}")