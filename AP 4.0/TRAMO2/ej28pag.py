# Crear un programa que pida un número de mes (ejemplo 4) y escriba el nombre del mes en letras ("abril"). Verificar que el mes sea válido e informar en caso que no lo sea.

meses_del_anio = ["enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"]
mes = int(input("ingrese un numero de mes del año (del 1 al 12): "))
if mes <= 12 :
    print(f"se ingreso el mes: {meses_del_anio[mes-1]}")
else:
    print("se ingreso un numero de mes invalido")

