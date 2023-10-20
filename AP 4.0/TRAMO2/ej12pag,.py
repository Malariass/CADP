#Escribir un programa en Python que solicite al usuario ingresar dos valores que representen las medidas en grados de dos ángulos interiores de un triángulo. 
#Luego, calcular y mostrar por pantalla el valor en grados del ángulo restante.

#Es importante recordar que la suma de los ángulos interiores de todo triángulo es de 180 grados. Es decir,
#la suma de los ángulos internos de un triángulo siempre es igual a 180 grados. Por lo tanto, para calcular el ángulo restante es necesario
#restar la suma de los dos ángulos interiores ingresados al valor 180."

#Para pensar:

#¿Qué pasaría si se ingresan valores negativos como medidas de ángulos?
#¿Qué sucedería si la suma de los dos ángulos ingresados es mayor o igual a 180 grados?

angulo1 = float(input("ingrese el primer angulo: "))
angulo2 = float(input("ingrese el segundo angulo: "))
if angulo1 < 0 or angulo2 < 0:
    print("los valores del los angulos no pueden ser negativos")
elif angulo1 + angulo2 >=180:
    print("La suma de los angulos no puede ser mayor o igual a 180")
else :
    angulo_restante = 180 - (angulo1 + angulo2)
    print(f"el valor del angulo restante es: {angulo_restante}")






