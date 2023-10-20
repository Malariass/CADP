# Escribir un programa que solicite al usuario ingresar tres notas de un alumno.
# El programa debe mostrar por pantalla las notas separadas por comas en un renglón y el promedio de las notas en el siguiente renglon.

nota1 = int(input("ingrese la primer nota: "))
nota2 = int(input("ingrese la segunda nota: "))
nota3 = int(input("ingrese la tercer nota: "))
print(f'{nota1}, {nota2}, {nota3}')
promedio = (nota1 + nota2 + nota3) / 3
print(f'promedio: {promedio}')