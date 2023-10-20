# Escribir un programa que muestre todos los números enteros del 1 al 5, y luego los mismos números pero en orden inverso.

desde = 1
cant = 6
salto = 1
print(range(desde,cant,salto))
print(len(range(desde,cant,salto)))
print(list(range(desde,cant,salto)))


for n in range(desde,cant,salto):
    print(n,end=' ',sep='-')
print()
for n in range(cant-1,desde-1,-1):
    print(n,end=' ',sep='-')