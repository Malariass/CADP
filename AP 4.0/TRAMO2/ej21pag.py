#Escribir un programa que permita ingresar dos números enteros e indicar si el primero es mayor, menor o igual al segundo.
num1 = int(input("escriba el primer numero: "))
num2 = int(input("escriba el segundo numero: "))
if num1 == num2 : 
    print("los numeros son iguales")
elif num2 > num1 :
    print(f"{num2} es mayor a {num1}")
else:
    print(f"{num1} es mayor a {num2}")