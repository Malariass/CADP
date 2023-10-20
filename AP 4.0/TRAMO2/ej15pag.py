#Definición del problema: Una inmobiliaria paga a sus vendedores un salario base, más una comisión fija por cada venta realizada,
# más el 5% del valor de esas ventas. Realizar un programa que imprima el nombre del vendedor y el salario que le corresponde en un determinado mes.

#Se leen por teclado el nombre del vendedor, la cantidad de ventas que realizó y el valor total de las mismas.

#¿Sobran datos? ¿Qué datos sobran?

nombre_vendedor = str(input("ingrese el nombre del vendedor: "))
cant_ventas = int(input("ingrese la cantidad de ventas: "))
ventas = int(input("ingrese el valor total de las ventas: "))
salario_base = 150000 #supongamos que es el salario base de todos los vendedores
comision_fija = 1000 #supongamos que por venta le dan 1000 de comision al vendedor
porcentaje_ventas = (ventas / 100) * 5 
salario_total = salario_base + cant_ventas*comision_fija + porcentaje_ventas #SALARIO TOTAL DEL VENDEDOR 
print(F"{nombre_vendedor} tiene un salario de: {salario_total}")
