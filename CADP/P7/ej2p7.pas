{Implementar un programa que lea y almacene información de clientes de una empresa aseguradora
automotriz. De cada cliente se lee: código de cliente, DNI, apellido, nombre, código de póliza
contratada (1..6) y monto básico que abona mensualmente. La lectura finaliza cuando llega el cliente
con código 1122, el cual debe procesarse.
La empresa dispone de una tabla donde guarda un valor que representa un monto adicional que el
cliente debe abonar en la liquidación mensual de su seguro, de acuerdo al código de póliza que tiene
contratada.
Una vez finalizada la lectura de todos los clientes, se pide:
a. Informar para cada cliente DNI, apellido, nombre y el monto completo que paga mensualmente
por su seguro automotriz (monto básico + monto adicional).
b. Informar apellido y nombre de aquellos clientes cuyo DNI contiene al menos dos dígitos 9.
c. Realizar un módulo que reciba un código de cliente, lo busque (seguro existe) y lo elimine de la
estructura.}

program ej2p7;
const
  codigosPolizas = 6;
type
  rangoPolizas = 1..6;
  vecPolizas = array [rangoPolizas] of Real;
  
  cliente = record
    cod_cliente : Integer;
    dni : Integer;
    ap : String;
    nombre : String;
    cod_poliza : rangoPolizas;
    monto_mensual : Real;
  end;

  Lista = ^nodo;

  nodo = record
    dato : cliente;
    sig : Lista;
  end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure LeerDatos(c:cliente);
var
  
begin
  with c do begin
    ReadLn(c.cod_cliente);
    ReadLn(c.dni);
    ReadLn(c.nombre);
    ReadLn(c.cod_poliza);
    ReadLn(c.monto_mensual);
  end;
end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure agregarAdelante (var L:Lista;c:cliente);
var
  nue : Lista;
begin
  new(nue);
  nue^.dato:= c;
  nue^.sig:= L; 
  L:=nue; 
end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure cargarLista (var L:Lista);
var
  c:cliente
begin
  repeat
    LeerDatos(c);
    agregarAdelante(L,c);
  until (c.cod_cliente = 1122);
end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure cargarVector (var v:vecPolizas);//SE DISPONE EL VECTOR CON EL MONTO CARGADO EN CADA CODIGO DE POLIZA
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure recorrerLista (var L:Lista);
var
  c:cliente;
begin
  while (L<>Nil) do begin
    incisoA(c);
    if (incisoB) then begin
      WriteLn(c.ap);
      WriteLn(c.dni);
    end;
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
{a. Informar para cada cliente DNI, apellido, nombre y el monto completo que paga mensualmente
por su seguro automotriz (monto básico + monto adicional).}
procedure incisoA (c:cliente; v:vecPolizas);
begin
  WriteLn(c.dni);
  WriteLn(c.ap);
  WriteLn(c.nombre);
  WriteLn(c.monto_mensual + v[c.cod_poliza]);
end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
{b. Informar apellido y nombre de aquellos clientes cuyo DNI contiene al menos dos dígitos 9.}
function incisoB (dni:Integer):Boolean;
var
  cont,dig:Integer;
begin
  cont:=0;
  dig:= dni mod 10;
  num:=dni;
  while (num <> 0) do begin
    if (dig = 9) then
      cont:=cont +1
    else
      num:= num div 10;
  end;
  if (cont >= 2) then
    incisoB := True;
end;


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
{c. Realizar un módulo que reciba un código de cliente, lo busque (seguro existe) y lo elimine de la
estructura.}
procedure eliminar (var L:Lista; codigo:Integer; var exito: Boolean); //SI SEGURO EXISTE
var
  ant,act:Lista;
begin
  exito:= False;
  act := L;
  {recorro mientras no encuentro el elemento}
  while (act^.dato.cod_cliente <> codigo) do begin
    ant := act;
    act := act^.sig;
  end;
  {SI SALE DEL WHILE ES POR QUE YA LO ENCONTRO SEGURO}
  exito := True;
  if (act = L) then
    L:= act^.sig
  else
    ant^.sig:= act^.sig;
  Dispose(act);
end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var
  L:Lista;
  c:cliente;
  exito:Boolean;
begin
  exito:=False;
  L:=Nil;
  cargarLista(L);
  recorrerLista(L);
  readln(c.cod_cliente);
  eliminar(L,c.cod_cliente,exito);
END.