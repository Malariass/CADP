#Escribir un programa que permita al usuario ingresar dos números enteros. La computadora debe indicar si el mayor es divisible por el menor.

#(Un número entero a es divisible por un número entero b cuando el resto de la división entre a y b es 0)

num1 = int(input("ingrese un numero: "))
num2 = int(input("ingrese el segundo numero: "))
if (num1 % num2) == 0 :
    print("los numeros son divisibles")
else : 
    print("los numeros no son divisibles")