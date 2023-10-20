# Escribir un programa que permita ingresar la cantidad de invitados a una fiesta y la cantidad de asientos disponibles en el salon.
# Debes indicar si alcanzan los asientos, Si los asientos no alcanzaran indicar cuántos faltan para que todos los invitados puedan sentarse.


cant_invitados = int(input("escriba la cantidad de invitados a la fiesta: "))
cant_asientos = int(input("escriba la cantidad de asientos disponibles: "))
if (cant_invitados) > (cant_asientos): 
    faltan = cant_invitados - cant_asientos
    print(f"faltan {faltan} sillas")
else:
    print("las sillas alcanzan")

