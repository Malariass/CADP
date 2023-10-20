#Escribir un programa que permita resolver el siguiente problema:

#Tres personas aportan diferente capital a una sociedad y desean saber el valor total aportado y qué porcentaje aportó cada una (indicando nombre y porcentaje).

#Solicitar la carga por teclado del nombre de cada socio y su capital aportado, a partir de esto calcular e informar lo requerido previamente.

inversor1 = str(input("ingrese el nombre del inversor1: "))
inversor2 = str(input("ingrese el nombre del inversor2: "))
inversor3 = str(input("ingrese el nombre del inversor3: "))
persona1 = float(input("ingrese la cantidad de capital aportado por persona1: "))
persona2 = float(input("ingrese la cantidad de capital aportado por persona2: "))
persona3 = float(input("ingrese la cantidad de capital aportado por persona3: "))
total_invertido = persona1 + persona2 + persona3
porcentaje_invertido1 = round((persona1 / total_invertido) * 100 , 2) #LA FUNCION ROUND SIRVE PARA DECIR CUANTOS DECIMALES DEJARLE AL FLOAT
porcentaje_invertido2 = round((persona2 / total_invertido) * 100 , 2)
porcentaje_invertido3 = round((persona3 / total_invertido) * 100 , 2)
print(f"el porcentaje y dinero invertido de {inversor1} fue de: %{porcentaje_invertido1} y ${persona1} ")
print(f"el porcentaje y dinero invertido de {inversor2} fue de: %{porcentaje_invertido2} y ${persona2}")
print(f"el porcentaje y dinero invertido de {inversor3} fue de: %{porcentaje_invertido3} y ${persona3}")
