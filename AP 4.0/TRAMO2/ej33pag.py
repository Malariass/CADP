#La farmacia Sindical efectúa descuentos a sus afiliados según el importe de la compra con la siguiente escala:

#Menor de $5500.0 el descuento es del 4.5%
#Entre $5500.0 y $10000.0 el descuento es del 8%
#Más de $10000.0 el descuento es del 10.5%
#Escribir un programa que reciba un importe e informe: el descuento y el precio neto a cobrar, con mensajes aclaratorios.

precio = float(input("ingrese el precio del producto: "))
if precio < 5500 :
    precio = precio - ((precio / 100) * 4.5)
    print(f"el descuento es de %4.5 y el precio queda en {precio}")
elif precio >= 5500 and precio <= 10000 :
    precio = precio - ((precio / 100) * 8)
    print(f"el descuento es de %8 y el precio queda en {precio}")
elif precio > 10000 :
    precio = precio - ((precio / 100) * 10.5)
    print(f"el descuento es de %10.5 y el precio queda en {precio}")
else :
    ("se puso un precio invalido")
