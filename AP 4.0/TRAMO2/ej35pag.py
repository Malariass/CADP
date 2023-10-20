#Existen dos reglas que identifican dos conjuntos de valores:

#a) El número es de un solo dígito.
#b) El número es impar.
#A partir de estas reglas, escribir un programa que permita ingresar un número entero.

#Debe asignar el valor que corresponda a las variables booleanas:

#esDeUnSoloDigito
#esImpar
#estaEnAmbos
#noEstaEnNinguno
#el valor Verdadero o Falso, según corresponda, para indicar si el valor número ingresado pertenece o no a cada conjunto.
#Definir un lote de prueba de varios números y probr el algoritmo, escribiendo los resultados.

numeros_prueba = [5, 12, 9, 2, 7]
for numero in numeros_prueba:
        esDeUnSoloDigito = 0 <= numero <= 9
        esImpar = numero % 2 != 0
        estaEnAmbos = esDeUnSoloDigito and esImpar
        noEstaEnNinguno = not esDeUnSoloDigito and not esImpar
        
        print(f"Número: {numero}")
        print(f"¿Es de un solo dígito? {esDeUnSoloDigito}")
        print(f"¿Es impar? {esImpar}")
        print(f"¿Está en ambos conjuntos? {estaEnAmbos}")
        print(f"¿No está en ninguno de los conjuntos? {noEstaEnNinguno}")
        print("=" * 30)