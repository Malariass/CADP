#Escribir un programa para resolver el siguiente problema:

#Tres personas invierten dinero para fundar una empresa (no necesariamente en partes iguales). Calcular qué porcentaje invirtió cada una.


persona1 = float(input("ingrese la cantidad de dinero invertido por persona1: "))
persona2 = float(input("ingrese la cantidad de dinero invertido por persona2: "))
persona3 = float(input("ingrese la cantidad de dinero invertido por persona3: "))
total_invertido = persona1 + persona2 + persona3
porcentaje_invertido1 = round((persona1 / total_invertido) * 100 , 2) #LA FUNCION ROUND SIRVE PARA DECIR CUANTOS DECIMALES DEJARLE AL FLOAT
porcentaje_invertido2 = round((persona2 / total_invertido) * 100 , 2)
porcentaje_invertido3 = round((persona3 / total_invertido) * 100 , 2)
print(f"el porcentaje invertido de persona1 fue de: {porcentaje_invertido1} ")
print(f"el porcentaje invertido de persona2 fue de: {porcentaje_invertido2}")
print(f"el porcentaje invertido de persona3 fue de: {porcentaje_invertido3}")
