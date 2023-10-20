{Una empresa de transporte de cargas dispone de la información de su flota compuesta por 100
camiones. De cada camión se tiene: patente, año de fabricación y capacidad (peso máximo en
toneladas que puede transportar).
Realizar un programa que lea y almacene la información de los viajes realizados por la empresa. De
cada viaje se lee: código de viaje, código del camión que lo realizó (1..100), distancia en kilómetros
recorrida, ciudad de destino, año en que se realizó el viaje y DNI del chofer. La lectura finaliza cuando
se lee el código de viaje -1.
Una vez leída y almacenada la información, se pide:
1. Informar la patente del camión que más kilómetros recorridos posee y la patente del camión que
menos kilómetros recorridos posee.
2. Informar la cantidad de viajes que se han realizado en camiones con capacidad mayor a 30,5
toneladas y que posean una antigüedad mayor a 5 años al momento de realizar el viaje (año en
que se realizó el viaje).
3. Informar los códigos de los viajes realizados por choferes cuyo DNI tenga sólo dígitos impares.
Nota: Los códigos de viaje no se repiten.}

program ej5P7;
const
  totalCamiones = 100;
type
  rangoCamiones = 1..totalCamiones;
  vecCamiones = array [rangoCamiones] of Integer;
  camiones = record
    patente = String;
    anioFabricacion = Integer;
    capacidad = Real;
  end;
  ListaC = ^nodo;
  nodo = record
    dato : camiones;
    sig : ListaC;
  end;
  ////////////////////////////////////////////////////////////////////
  viajes = record
    codViaje : String;
    codCamion : rangoCamiones;
    KMrecorridos : Real;
    ciudadDestino : String;
    anioDelViaje : Integer;
    DNI : Integer;
  end;
  ListaV = ^nodo;
  nodo = record
    dato : viajes;
    sig : ListaV;
  End;
///////////////////////////////////////////////////////////////
procedure ListaCamiones (Lc:ListaC); {SE DISPONE DE ESTA LISTA YA CREADA Y CARGADA}
///////////////////////////////////////////////////////////////
procedure LeerViajes (v:viajes);
begin
  with v do begin
    ReadLn(codViaje);
    ReadLn(codCamion);
    readln(KMrecorridos);
    readln(ciudadDestino);
    ReadLn(anioDelViaje);
    ReadLn(DNI);
  end;
end;
//////////////////////////////////////////////////////////////////
procedure agregarAdelante (var Lv:ListaV; v:viajes);
var
  nue:ListaV;
begin
  new(nue);
  nue^.dato:=v;
  nue^.sig:=Lv;
  Lv:=nue;
end;
/////////////////////////////////////////////////////////////////////
procedure CrearListaV (var Lv:ListaV);
var
  v:viajes;
  
begin
  LeerViajes(v);
  while (v.codViaje <> -1) do begin
    agregarAdelante(Lv,v);
    LeerViajes(v);
  end;
end;
////////////////////////////////////////////////////////////////////
procedure recorrerLista (var Lv:ListaV;var Lc:ListaC);
var
  v:viajes;
  patenteMax,patenteMin:String;
begin
  while (Lv <> Nil) do begin
    patenteMaxMin(Lv,Lc,patenteMax,patenteMin);

  end;
end;
//////////////////////////////////////////////////////////////////////////
procedure patenteMaxMin (Lv:ListaV; Lc:ListaC;var patenteMax: string;var patenteMaxMin: String);
var
  max,min:Real;
begin
  max:=0;
  min:=9999;
  if (Lv^.dato.KMrecorridos > max) then begin
    max:=Lv^.dato.KMrecorridos;
    patenteMax:= Lc^.dato.patente;
  end
  else
    if (Lv^.dato.KMrecorridos < min) then
    begin
      min:=Lv^.dato.KMrecorridos;
      patenteMin:= Lc^.dato.patente;
    end;
end;
/////////////////////////////////////////////////////////////////////////////////////////////
{Informar la cantidad de viajes que se han realizado en camiones con capacidad mayor a 30,5
toneladas y que posean una antigüedad mayor a 5 años al momento de realizar el viaje (año en
que se realizó el viaje)}////////////////////////////////////////////////////////////////////
procedure incisoB ();
var

begin
  
end;




var
  Lv:ListaV;
  Lc:ListaC;
  

begin
  Lv:=Nil;
  CrearListaV(Lv);
  recorrerLista(Lv);

end.
