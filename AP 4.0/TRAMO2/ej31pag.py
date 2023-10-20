# constantes simbólicas
COSTO_BASICO = 1000
COSTO_POR_PAGINA = 35.10
COSTO_ENC_RUSTICA = 1200
COSTO_ENC_ESPECIAL = 880

num_paginas = int(input("Ingrese el número de páginas del libro: "))
costo = COSTO_BASICO + (COSTO_POR_PAGINA * num_paginas)
if num_paginas > 300 :
    costo = costo + COSTO_ENC_RUSTICA
elif num_paginas > 600 :
    costo = costo + COSTO_ENC_ESPECIAL
    
print("El costo del libro es: $", costo)