"""
Se pide implementar la clase Boleteria, que recibe en su constructor un evento y la
cantidad de localidades para el mismo; de modo tal que cumpla el siguiente comportamiento:

>>> b = Boleteria("Rush",500)                       >>> b.localidades_agotadas()
>>> print(b)                                        False
Evento: Rush - Localidades vendidas: 0 de 500       >>> b.vender_localidades(100)
>>> b.vender_localidades(400)                       >>> b.localidades_agotadas()
>>> b.vender_localidades(200)                       True
Traceback (most recent call last):                  >>> print(b)
...                                                 Evento: Rush - Localidades vendidas: 500 de 500
ValueError: No hay localidades suficientes
"""

class Boleteria:
  def __init__(self,nombre_evento:str,cantidad_entradas:int) -> None:
    self.__nombre_evento:str =nombre_evento
    self.__cant_entradas:int = cantidad_entradas
    self.__vendidas:int = 0

  def getNombre_evento(self)->str:
    return self.__nombre_evento

  def localidades_agotadas(self) -> bool:
    return self.__cant_entradas == self.__vendidas

  def vender_entradas(self,cantidad:int) -> None:
    if not self.hay_lugar(cant_comprada):
      raise ValueError ('no hay localidades suficientes')
    self.__vendidas += cant_comprada

  def __str__(self) -> str:
    return f"Evento: {self.__nombre_evento} - Localidades vendidas: {self.__vendidas} de {self.__cant_entradas}"
 
  def hay_lugar(self,cant_entradas) -> bool:
    disponible = (self.__cant_entradas - self.__vendidas)
    if cant_entradas > disponible :
      return True

class EmpresaEntradas:
  def __init__(self,nombre:str) -> None:
    self.__nombre:str = nombre
    self.__boleterias:list[Boleteria] = []
    
  def agregar_boleteria(self,boleteria:Boleteria)->None:
    if boleteria is None or not isinstance(boleteria,Boleteria):
      raise ValueError('no se puede agregar algo que no sea una boleteria')
    
    self.__boleterias.append(boleteria)
      
  def vender_entradas(self,nombre_evento:str,cant_entradas:int)->None:
    evento_encontrado = self.__buscar_evento(nombre_evento)
    if evento_encontrado is None:
      print('no existe el evento')
    elif evento_encontrado.localidades_agotadas():
      print('Localidades agotadas!!')
    elif not evento_encontrado.hay_lugar(cant_entradas):
      print ('No hayuu lugar')

      evento_encontrado.vender_entradas(cant_entradas)
      print('Localidades vendidas OK!!')
      
    



  def __buscar_evento(self,nombre_evento:str)-> Boleteria:
    for boleteria in self.__boleterias:
      if boleteria.getNombre_evento() == nombre_evento:
        return boleteria
    return None







 def main():
    ee = EmpresaEntradas('Ticketon')
    b1 = Boleteria('Palito Ortega', 1000)
    b2 = Boleteria('juan ramon', 1000)
    b3 = Boleteria('Juan y Juan', 200)
    
    ee.agregar_boleteria(b1)
    ee.agregar_boleteria(b2)
    ee.agregar_boleteria(b3)


    ee.vender_entradas('Palito Ortega',20)
    ee.vender_entradas('Palito Ortega',2000)
    ee.vender_entradas('Juan Ramon',20)
    


  '''
    b1 = Boleteria("Palito Ortega", 1000)
    print(b1)
    entradas = 2050
    try: 
      b1.vender_entradas(250)
    except ValueError as e:
      print(f'Error: {e} para comprar {entradas} Entradas')
    else:
      print(b1)
  '''
main()