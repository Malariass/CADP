#Una remisería requiere un sistema que calcule el precio de un viaje a partir de la cantidad de km que desea recorrer el usuario.

#Tiene la siguiente tarifa:

#Viaje mínimo $50
#Si recorre entre 0 y 10km: $20/km
#Si recorre 10km o más: $15/km
#Escribir un programa que permita ingresar la cantidad de km que desea recorrer el usuario y muestre el precio del viaje.

km_viaje = float(input("ingrese la cantidad de kilometros recorridos: "))
VIAJE_MINIMO = 50
if km_viaje <= 10 :
    valor_km = 20
elif km_viaje > 10 :
    valor_km = 15
total = VIAJE_MINIMO + (km_viaje * valor_km)
print(f"el valor total del viaje es de {total}")
