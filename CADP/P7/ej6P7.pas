{ El Observatorio Astronómico de La Plata ha realizado un relevamiento sobre los distintos objetos
astronómicos observados durante el año 2015. Los objetos se clasifican en 7 categorías: 1: estrellas,
2: planetas, 3: satélites, 4: galaxias, 5: asteroides, 6: cometas y 7: nebulosas.
Al observar un objeto, se registran los siguientes datos: código del objeto, categoría del objeto (1..7),
nombre del objeto, distancia a la Tierra (medida en años luz), nombre del descubridor y año de su
descubrimiento.
A. Desarrolle un programa que lea y almacene la información de los objetos que han sido
observados. Dicha información se lee hasta encontrar un objeto con código -1 (el cual no
debe procesarse). La estructura generada debe mantener el orden en que fueron leídos los
datos.
B. Una vez leídos y almacenados todos los datos, se pide realizar un reporte con la siguiente
información:
1. Los códigos de los dos objetos más lejanos de la tierra que se hayan observado.
2. La cantidad de planetas descubiertos por "Galileo Galilei" antes del año 1600.
3. La cantidad de objetos observados por cada categoría.
4. Los nombres de las estrellas cuyos códigos de objeto poseen más dígitos pares que
impares.}

program ej6P7;
const
  cantCategorias = 7;
type
  rangoCategorias = 1..cantCategorias;
  vecCategorias = array [rangoCategorias] of Integer;
  objeto = record
    cod_objeto : String;
    categoria : rangoCategorias;
    nombre : String;
    distancia : Real;
    descubridor : String;
    anioDescubierto : Integer;
  end;
  Lista = ^nodo;
  nodo = record
    dato : objeto;
    sig : Lista;
  end;
/////////////////////////////////////////////////////////////////////////////////////////////////////
procedure leerObjeto (o:objeto);
begin
  with o do begin
    ReadLn(cod_objeto);
    ReadLn(categoria);
    readln(nombre);
    ReadLn(distancia);
    readln(descubridor);
    readln(anioDescubierto);
  end;
end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure agregarAdelante (var L:Lista; o:objeto);
var
  nue:Lista;
begin
  new(nue);
  nue^.dato:=o;
  nue^.sig:=L;
  L:=nue;
end;
//////////////////////////////////INCISO A////////////////////////////////////////////////////////////
procedure crearLista (var L:Lista);
var
  o:objeto;
begin
  leerObjeto(o);
  while (o.cod_objeto <> -1) do begin
    agregarAdelante(L,o);
    leerObjeto(o);
  end;
end;
//B1: Los códigos de los dos objetos más lejanos de la tierra que se hayan observado./////////////////////////////////////////////////////////////////////////
procedure masLejanos (L:Lista;var cod1:Integer;var cod2:Integer;var max1:Real;var max2:Real);
begin
  ReadLn(L^.dato.distancia);
  if (L^.dato.distancia > max1) then begin
    max2:=max1;
    max1:=L^.dato.distancia;
    cod1:=L^.dato.cod_objeto
  End
  else
    if (L^.dato.distancia > max2) then begin
      max2:=L^.dato.distancia;
      cod2:=L^.dato.cod_objeto;
    end;
end;
//B2: 2. La cantidad de planetas descubiertos por "Galileo Galilei" antes del año 1600./////////////////////////////
procedure inicsoB2 (L:Lista;var cont:Integer);
begin
  if (L^.dato.descubridor = 'Galileo Galilei') and (L^.dato.anioDescubierto < 1600) then
  begin
    cont:=cont+1;
  end;
end;
//INICIALIZAR VECTOR EN 0////////////////////////////////////////////////////////////////////////////////////////
procedure inicializarVector (var v:vecCategorias);
var
  i:Integer
begin
  for i:=1 to cantCategorias do 
    v[i]:=0;
end;
//3. La cantidad de objetos observados por cada categoría.//////////////////////////////////////////////////////////
procedure incisoB3 (var v:vecCategorias;L:Lista);
var
  i: Integer;
begin
  i:=L^.dato.categoria;
  v[i]:=v[i]+1;
end;
//4. Los nombres de las estrellas cuyos códigos de objeto poseen más dígitos pares que impares.///////////////////
{FUNCION PARIMPAR}
function MasParesQueImpares (num:Integer):Boolean;
var
  dig,par,impar:Integer;
begin
  par:=0;
  impar:=0;
  dig:=0;
  while (num <> 0) do begin
    dig:= num mod 10;
    if (dig mod 2 = 0) then
      par:= par + 1
    else
      impar:= impar +1;
    num:= num div 10;
    readln(num);
  end;
  if (par > impar) then
    MasParesQueImpares:= True;  
end;

procedure incisoB4 (L:Lista;);
begin
  if MasParesQueImpares(L^.dato.cod_objeto) and (L^.dato.categoria = 1)then
    begin
      print(L^.dato.nombre);
    end;
end;
////////////////////////////////////INCICO B//////////////////////////////////////////////////////////////////////
procedure recorrerLista (var L:Lista);
var
  cod1,cod2,cont:Integer;
  max1,max2:Real;
  v:vecCategorias;
begin
  max1:=0;
  max2:=0;
  cont:=0;
  while (L <> Nil) do begin
    masLejanos(L,cod1,cod2,max1,max2);
    inicsoB2(L,cont);
    incisoB3(v,L);
    incisoB4(L);
  end;
end;
/////PROGRAMA PRINCIPAL////////////////////////////////////////////////////////////////////////////////////////////
var
  L:Lista;
begin
  L:=Nil;
  crearLista(L);
  recorrerLista(L);
end.
