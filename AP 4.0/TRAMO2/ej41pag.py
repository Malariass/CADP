#Escribir un programa que lea números enteros hasta que se ingrese un 0, y muestre el máximo.

numA = int(input("ingrese un numero"))
max = numA
while numA != 0 :
    numA = int(input("ingrese otro numero"))
    if numA > max :
        max = numA
print()
print(max)