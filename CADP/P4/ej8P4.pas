{Realizar un programa que lea y almacene la información de 400 alumnos ingresantes a la Facultad de
Informática de la UNLP en el año 2020. De cada alumno se lee: nro de inscripción, DNI, apellido, nombre y
año de nacimiento. Una vez leída y almacenada toda la información, calcular e informar:
a) El porcentaje de alumnos con DNI compuesto sólo por dígitos pares.
b) Apellido y nombre de los dos alumnos de mayor edad.}


program ej8;

uses
   SysUtils;

const
  max = 400;

type
  alumnos = record
    nro_inscripcion : Integer;
    DNI : Integer;
    apellido : String[50];
    nombre : String[50];
    año_nacimiento : Integer;
  end;
  
  vector = array [1..max] of integer;

function TieneDigitosPares(numero: Integer): boolean;
var
  digito: Integer;
begin
  Result := True;
  while numero > 0 do
  begin
    digito := numero mod 10;
    if digito mod 2 <> 0 then
    begin
      Result := False;
      Exit;
    end;
    numero := numero div 10;
  end;
end;

procedure contador (num: Integer);
var
  i: Integer;
  pares: Integer;
  promedio : Real;
begin
  pares := 0;
  for i:= 1 to max do begin
    ReadLn(num);
    TieneDigitosPares(num);
    if TieneDigitosPares = True then
       pares := pares + 1;
  end;
  promedio := (pares/max);
  WriteLn((promedio) * 100:0:2, '%');
end;

procedure mayorEdad ()

var
   num : Integer;

begin
   contador(num);


end.  