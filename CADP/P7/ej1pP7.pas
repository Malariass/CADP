{. Una productora nacional realiza un casting de personas para la selección de actores extras de una
nueva película, para ello se debe leer y almacenar la información de las personas que desean
participar de dicho casting. De cada persona se lee: DNI, apellido y nombre, edad y el código de
género de actuación que prefiere (1: drama, 2: romántico, 3: acción, 4: suspenso, 5: terror). La lectura
finaliza cuando llega una persona con DNI 33555444, la cual debe procesarse.
Una vez finalizada la lectura de todas las personas, se pide:
a. Informar la cantidad de personas cuyo DNI contiene más dígitos pares que impares.
b. Informar los dos códigos de género más elegidos.
c. Realizar un módulo que reciba un DNI, lo busque y lo elimine de la estructura. El DNI puede no
existir. Invocar dicho módulo en el programa principal.}

program ej1pP7; 
const
  cantGeneros = 5;
type
  rangoGeneros = 1..cantGeneros;
  vecGeneros = array [rangoGeneros] of Integer;
 
  persona = record
    DNI : Integer;
    nomYap : String;
    edad : Integer;
    codigo_genero : rangoGeneros;
  end;

  Lista = ^nodo;

  nodo = record
    dato : persona;
    sig : Lista;
  end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure LeerDatos (var p:persona);
begin
  with p do
    begin
      ReadLn(DNI);
      ReadLn(nomYap);
      ReadLn(edad);
      ReadLn(codigo_genero);
    end;

end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure agregarAdelante (var L:Lista; p:persona);
var
  nue:Lista;
begin
  new(nue);
  nue^.dato:=p;
  nue^.sig:=L;
  L:=nue;
end;

///////////// Informar la cantidad de personas cuyo DNI contiene más dígitos pares que impares.///////////////////////////////////////
function DigPares (dni:Integer):Boolean;
var
  dig:Integer;
  par,impar:Integer;
begin
  par:=0;
  impar:=0;
  ReadLn(dni);
  num:=dni;
  while (num <> 0) do
    begin
      dig:= num mod 10;
      if (dig mod 2 = 0) then
        par:= par + 1
      else
        impar:= impar + 1;
      num:= num div 10;      
      ReadLn(num);
    end;
  if (par > impar) then
    DigPares:=True;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure inicializarVector (var v:vecGeneros);
var
  i:Integer;
begin
  for i:=1 to cantGeneros do begin
    v[i]:=0;
  end;
end;

//////////////////////////////b. Informar los dos códigos de género más elegidos./////////////////////////////////////////////
procedure GenMaximos (var max1, max2 : Integer;var cod1,cod2 :Integer;GenNum : Integer;v:vecGeneros);
var
  i:Integer;
begin
  for i:=1 to cantGeneros do begin
    if (v[i] > max1) then begin
      max2:=max1;
      cod2:=cod1;
      max1:=v[i];
      cod1:=i;
    end
    else
      if (v[i] > max2) then begin
        max2:=v[i];
        cod2:=i;
      end;
  end;
end;


{c. Realizar un módulo que reciba un DNI, lo busque y lo elimine de la estructura.////////////////////////////////
 El DNI puede no existir. Invocar dicho módulo en el programa principal.}/////////////////////////////////////////
procedure eliminar (dni:Integer;var pri:Lista;var exito:Boolean);
var
  ant,act:Lista;
begin
  exito:=False;
  act:=L;
  while (act <> Nil) and (act^.dato.DNI <> dni) do begin
    ant:= act;
    act:= act^.sig;
  end;
  if (act <> Nil) then begin
    exito := True;
    if (act = pri) then
      pri:= act^.sig
    else
      ant^.sig:=act^.sig;
    Dispose(act);
  end;
    
    
end;



///////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure cargarLista (var L:Lista);
var
  p:persona;
begin
  repeat
    LeerDatos(p);
    agregarAdelante(L,p);
  until (p.DNI = 33555444)
end;


///////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure recorrerLista (var L:Lista);
var
  p:persona;
  cant_par:Integer;
  max1,max2:Integer;
  cod1,cod2:Integer;
  v:vecGeneros;
begin
  cant_par:=0;
  max1:=0;
  max2:=0;
  inicializarVector(v);
  while (L<>Nil) do begin
    if DigPares(L^.dato.DNI) = True then
      cant_par:= cant_par + 1;
    v[L^.dato.codigo_genero]:= v[L^.dato.codigo_genero]+1;
  end;
    GenMaximos(max1,max2,cod1,cod2,L^.dato.codigo_genero);
    
  WriteLn('la cantidad de DNI que tienen mas digitos pares que impares es: ',cant_par);

end;

/////////////////////////////////////////////////PROGRAMA PRINCIPAL/////////////////////////////////////////////
var
  L:Lista;
  dni:Integer;
  exito:boolean;
begin
  L:=Nil;
  cargarLista(L);
  recorrerLista(L);
  ReadLn(dni);
  eliminar(dni,L,exito);
end.


