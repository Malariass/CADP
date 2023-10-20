#Escribir un programa que permita ingresar dos números enteros y la operación a realizar('+', '-', '*', '/').
#Debe mostrarse el resultado para la operación ingresada. Considerar que no se puede dividir por cero (en ese caso mostrar el texto 'ERROR').

num1 = int(input("ingrese un numero: "))
num2 = int(input("ingrese un numero: "))
suma = num1 + num2
resta = num1 - num2
multiplicacion =  num1 * num2
division = num1 / num2
if num2 == 0 :
    division = "ERROR"
print(f"la suma de los numeros es: {suma}")
print(f"la resta de los numeros es: {resta}")
print(f"la multiplicacion de los numeros es: {multiplicacion}")
print(f"la division de los numeros es: {division}")