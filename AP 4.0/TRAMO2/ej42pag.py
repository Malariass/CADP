#Escribir un programa que lea números enteros hasta que se ingrese un 0, y muestre el promedio de los números ingresados.

numA = int(input("ingrese un numero"))
cant = 0
total = 0
while numA != 0 :
    cant = cant +1
    total = total + numA
    numA = int(input("ingrese otro numero"))

print()
print(total / cant)