{Realizar un programa que lea y almacene el salario de los empleados de una empresa de turismo (a lo
sumo 300 empleados). La carga finaliza cuando se lea el salario 0 (que no debe procesarse) o cuando se
completa el vector. Una vez finalizada la carga de datos se pide:
a) Realizar un módulo que incremente el salario de cada empleado en un 15%. Para ello, implementar un
módulo que reciba como parámetro un valor real X, el vector de valores reales y su dimensión lógica y
retorne el mismo vector en el cual cada elemento fue multiplicado por el valor X.
b) Realizar un módulo que muestre en pantalla el sueldo promedio de los empleados de la empresa.}


program ej10P4e;


type
   begin
     vector: array [1..300] of integer;     
   end;

procedure inicializarVector(var V:vector);
var
  i: Integer;
begin
  for i:=1 to 300 do begin
    V[i]:= 0;    
  end;
end;



procedure incrementarSalario(salario; var V:vector; i);
var
  i: Integer;

begin
  ReadLn(salario);
  salario:= salario + (salario * (15 / 100));
  V[i]:= salario; 
end;

function imprimirPromedio(): Real;
var
begin
  
end;


var
   salario: real;
   V: vector;
   i: integer;
   promedio: Real;


begin
  promedio:= 0;
  inicializarVector(V);
  for i:=1 to 300 do
    begin
      ReadLn(salario);
      while (salario <> 0) do begin
        V[i]:= salario;
        incrementarSalario(salario,V,i);
        imprimirPromedio(V, i, promedio);
      end;
    end;
end.