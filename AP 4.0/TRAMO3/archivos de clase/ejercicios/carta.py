"""
Implementar una clase Carta, que se crea a partir de un palo y un valor.
Las cartas deben poder imiprimirse de la forma <valor> de <palo>.
Las cartas dfeben poder compararse entre ellas:
    Una carta vale menos que otra si al ser del mismo palo su valor es menor,
    o si al ser de distintos palos el propio es menor que el palo de la otra carta
    Implementar una clase Palo,
    que implementa los metodos __eq__, __lt__ y __str__).
"""
#import sys

#sys.path.append(f"{sys.path[0]}\\recursos\\")
#from txtcolores import strclr

import random

class cartaPoker:

    def __init__(self,numero:int,palo:int,tapada:bool=False) -> None:
        self.__numero:int = numero
        self.__palo:int = palo
        self.__tapada:bool = tapada

    def get_numero(self)->int:
        return self.__numero
    
    def get_palo(self)->int:
        return self.__palo
    
    def is__tapada(self)->bool:
        return self.__tapada

    def tapar(self)-> None:
        self.__tapada = True

    def destapar(self)-> None:
        self.__tapada = False

    def isroja(self)-> bool:
        return self.get_palo() <= 2
    def isnegra(self)-> bool:
        return self.get_palo() >=3
    
    def __str__(self) -> str:
        palo =  ("#","♥️","♦️","♣️","♠️")
        numero = ("#","A","2","3","4","5","6","7","8","9","10","J","Q","K")
    
           # if self.is__tapada():
          #          cadena = f"{strclr('[',)}{numero[0]}{palo[0]}{strclr(']',10)}"
           #     else:
          #          cadena = f"{strclr('[',)}{numero[0]}{self.get_numero()}{palo[self.get_palo()]}{strclr(']',)}"
           # return cadena    
    
        if self.is__tapada():
            cadena = f"[{strclr('[',)}{numero[0]}{palo[0]}{strclr(']',10)}]"
        else:
            cadena = f"[{strclr('[',)}{numero[0]}{self.get_numero()}{palo[self.get_palo()]}{strclr(']',)}]"
        
        return cadena 
    
    
    def __eq__(self, __value: object) -> bool:
        if __value is None or not isinstance(__value,cartaPoker):
            return False
        
        return self.get_numero() == __value.get_numero() and self.get_palo() == __value.get_palo()
    
    def __ne__(self, __value: object) -> bool:
        return not self.__eq__(__value)
    
    
class MazoPoker:
    def __init__(self) -> None:
        self.__cartas: list[cartaPoker] = []
        
    def __len__ (self)->int:
        return len(self.__cartas)
    
    def poner(self,carta:cartaPoker,index:int=None)->None:
        if not isinstance(carta,cartaPoker):
            raise ValueError("solo se pueden poner cartas de poker!!")
        if index :
            self.__cartas.insert(index,carta)
        else:
            self.__cartas.append(carta)
         
        
    
    def sacar(self,index:int=0)->None:
        return self.__cartas.pop(index)
    
    def isvacio(self)->bool:
        return len(self) == 0
    
    def mezclar(self)-> None:
        random.shuffle(self.__cartas)
        
    def llenar(self,tapado:bool=False)->None:
        for n in range(1,14): #n es el numero de la carta
            for p in range(1,5): #p es el palo de la carta
                self.poner(cartaPoker(n,p,tapado))
    
    def cortar(self)-> None:
        posicion = random.randint(0,len(self)-1)
        self.__cartas = self.__cartas[posicion:]+self.__cartas[:posicion]
                
    def __str__(self) -> str:
       return ''.join([str(carta) for carta in self.__cartas]) 
        
        
        
    
    
    
    
def main():
    c1 = cartaPoker(1,1)
    print(c1)
    c1.tapar()
    print(c1)
    if c1.is__tapada():
        print("Roja",c1.isroja())
        
    m = MazoPoker()
    m.llenar()
    print('\n',m)
    m.mezclar()
    print('\n',m)
    
    lista = [1,2,3,4,5,6,7,8,9]
    print(lista)
    lista = lista[2:]+lista[:2]
    print(lista)
main()










































