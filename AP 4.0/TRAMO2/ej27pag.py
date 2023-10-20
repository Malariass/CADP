#Escribir un programa que permita ingresar una edad (entre 1 y 120 años), un género ('F'para mujeres, 'H' para hombres) y un nombre.
# En caso de haber ingresado valores erróneos (edad fuera de rango o género inválido), informar tal situación indicando el nombre de la persona.
# Si los datos están bien ingresados el programa debe indicar, sabiendo que las mujeres se jubilan con 60 años o más y los hombres con 65 años o más,
# si la persona está en edad de jubilarse.

edad = int(input("escriba la edad entre 1 y 120 años "))
genero = (input("ponfa F para mujeres o H para hombres "))
nombre = (input("ingrese un nombre "))
if (edad > 120) or (edad < 1):
    print("la edad ingresada no es valida")
elif (genero != 'F' or 'M'):
    print(f"se ingreso un genero invalido para {nombre}")
else:
    if (edad >= 60) and (genero == 'M') :
        print(f"{nombre} esta en edad de jubilarse")
    elif (edad >= 65) and (genero == 'H') :
        print(f"{nombre} esta en edad de jubilarse")
    else:
        print(f"{nombre} no tiene edad para jubilarse")

