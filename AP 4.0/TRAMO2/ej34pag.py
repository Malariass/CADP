sueldo = float(input("ingrese el sueldo: "))
entrada_usuario = input("ingrese el estado civil (C o S): ")
estado = entrada_usuario
antiguedad = int(input("ingrese los años de antiguedad: "))
if entrada_usuario == "S" :
    sueldo = sueldo + ((sueldo/100)*5)
elif entrada_usuario == "C":
    sueldo = sueldo + ((sueldo/100)*7)
else :
    print("se ingreso un estado civil invalido")
jubilacion = ((sueldo/100)*11)
Obrasocial = ((sueldo/100)*3)
sindicato = ((sueldo/100)*3)
sueldo_neto = sueldo - ((sueldo/100)*17)
print(f"estado civil : {estado}")
print(f"sueldo basico: {sueldo}")
print(f"antiguedad: {antiguedad}")
print(f"descuentos: jubilacion: {jubilacion}")
print(f"obra social: {Obrasocial}")
print(f"sindicato: {sindicato}")
print(f"el sueldo neto es: {sueldo_neto}")
  
