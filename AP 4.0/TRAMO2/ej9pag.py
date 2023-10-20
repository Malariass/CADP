#Escribir un programa que permita ingresar valores del mismo tipo para las variables num1 y num2. 
#Una vez cargadas, mostrar ambas variables por pantalla, intercambiá sus valores (que lo cargado en num1 quede en num2, y viceversa) y volvé a mostrarlas actualizadas.

#Como pensarlo:

#Pedir al usuario que ingrese un valor para la variable num1.

#Pedir al usuario que ingrese un valor para la variable num2.

#Mostrar por pantalla el valor de las variables num1 y num2.

#Intercambiar los valores de las variables num1 y num2.

#Mostrar por pantalla el valor de las variables num1 y num2.

#Otra forma de resolverlo:

num1 = int(input("ingrese el num1: "))
aux = num1
num2 = int(input("ingrese el num2: "))
print(f"los numeros ingresados son: {num1} y {num2}")
num1 = num2
num2 = aux
print(f"los numeros ingresados, al revez son: {num1} y {num2}")
