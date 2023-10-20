{Realizar un programa que lea y almacene la información de productos de un supermercado. De cada
producto se lee: código, descripción, stock actual, stock mínimo y precio. La lectura finaliza cuando se ingresa
el código -1, que no debe procesarse. Una vez leída y almacenada toda la información, calcular e informar:
a. Porcentaje de productos con stock actual por debajo de su stock mínimo.
b. Descripción de aquellos productos con código compuesto por al menos tres dígitos pares.
c. Código de los dos productos más económicos.}

program ej5P6;
const

type
  producto = record
    codigo : Integer;
    descripcion : String;
    stock_act : Integer;
    stock_min : Integer;
    precio : real;
  end;

  Lista = ^nodo;

  nodo = record
    dato : producto;
    sig : Lista;
  end;


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure leerDatos (var p:producto);
begin
  ReadLn(p.codigo); 
  while (p.codigo <> -1) do begin
    ReadLn(p.descripcion);
    ReadLn(p.stock_act);
    ReadLn(p.stock_min);
    ReadLn(p.precio);
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure cargarDatos(var L:Lista; p:producto);
var
  nue:Lista;
begin
  New(nue);
  nue^.dato:=p;
  nue^.sig:=L;
  L:=nue;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure crearLista (var L:Lista; p:producto);
var
  
begin
  leerDatos(p);
  while (L<>Nil) do
    begin
      cargarDatos(L,p);
      
    end;
    
end;



//////////////////////////////////////////PROGRAMA PRINCIPAL/////////////////////////////////////////////////////////////////////////////////////
var
  poco_stock : Real;
  L : Lista;
  p:producto;
begin
  L:=Nil;
  crearLista(L,p);
  

end.