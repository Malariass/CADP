{Una remisería dispone de información acerca de los viajes realizados durante el mes de mayo de
2020. De cada viaje se conoce: número de viaje, código de auto, dirección de origen, dirección de
destino y kilómetros recorridos durante el viaje. Esta información se encuentra ordenada por código
de auto y para un mismo código de auto pueden existir 1 o más viajes. Se pide:
a. Informar los dos códigos de auto que más kilómetros recorrieron.
b. Generar una lista nueva con los viajes de más de 5 kilómetros recorridos, ordenada por número
de viaje.}

program ej3P7;
const
  
type
  viaje = record
    numViaje : Integer;
    codAuto : integer;
    direOrigen : String;
    direDestino : String;
    kmRecorridos : Real;
  end;
  
  Lista = ^nodo;

  nodo = record
    dato : viaje;
    sig : Lista
  end;

procedure MasRecorrido (L:Lista;codmax1,codmax2:Integer;kmMax1,kmMax2:Real);//a. Informar los dos códigos de auto que más kilómetros recorrieron.
begin
  if (L^.dato.kmRecorridos>kmMax1) then
  begin
    kmMax2:=kmMax1;
    codmax2:=codmax1;
    kmMax1:=L^.dato.kmRecorridos;
    codmax1:=L^.dato.codAuto;
  end
  else
    begin
      if (L^.dato.kmRecorridos > kmMax2) then
      begin
        kmMax2:=L^.dato.kmRecorridos;
        codmax2:=L^.dato.codAuto;
      end;
    end;
end;

procedure InsertarOrdenado (var L:Lista; V:viaje);
var
  ant,nue,act:Lista;
begin
  new(nue);
  nue^.dato:= V;
  act:=L;
  ant:=L;
  while (act <> Nil) and (act^.dato.numViaje < V.numViaje) do
  begin
    ant:=act;
    act:=act^.sig;
  end;
  if (ant = act) then
  begin
    L:=nue;
  end
  else
    begin
      ant^.sig:=nue;
    end;
end;

procedure recorrerLista (var L:Lista);
var
  cantKM:Integer
  act:Integer;
  codmax1:Integer;
  codmax2:Integer;
  kmMax1:Real;
  kmMax2:Real;
  ListaNueva:Lista;
begin
  ListaNueva:=Nil;
  codmax1:=-1;
  codmax2:=-1;
  kmMax1:=-1;
  kmMax2:=-1;
  while L <> Nil do
  begin
    cantKM:=0;
    act:=L^.dato.codAuto;
    while (L<>Nil) and (act:=L^.dato.codAuto) do
    begin
      if (L^.dato.kmRecorridos>5) then
      begin
        InsertarOrdenado(ListaNueva,L^.dato);
      end;
      cantKM:=cantKM+L^.dato.kmRecorridos;
      L:=L^.sig;
    end;
    MasRecorrido(L,codmax1,codmax2,kmMax1,kmMax2);
  end;
end;

var
  L:Lista;
begin
  L:=Nil;
  recorrerLista(L);
end.

var 
  L:Lista;
begin
  L:=Nil;
  LeeryCargarLista(); //se dispone
end.