#Escribir un programa que permita Ingresar las notas de los dos parciales de un alumno e indicar si promocionó, 
#aprobó o debe recuperar. Si el valor de la nota no esta entre 0 y 10, debe informar un error.

#Se promociona cuando las notas de ambos parciales son mayores o iguales a 7.
#Se aprueba cuando las notas de ambos parciales son mayores o iguales a 4.
#Se debe recuperar cuando al menos una de las dos notas es menor a 4.


nota1 = float(input("ingrese la primer nota (entre 1 y 10): "))
nota2 = float(input("ingrese la segunda nota (entre 1 y 10): "))


if nota1 > 10 or nota2 > 10:
    print("se ingreso una nota invalida")
elif nota1 < 0 or nota2 < 0:
    print("se ingreso una nota invalida")
elif nota1 >= 7 and nota2 >= 7:
    print("el alumno promociono")
elif nota1 >= 4 and nota2 >= 4:
    print("el alumno aprobo")
elif nota1 < 4 or nota2 < 4:
    print("el alumno desaprobo")
