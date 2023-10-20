{Una maternidad dispone información sobre sus pacientes. De cada una se conoce: nombre, apellido y
peso registrado el primer día de cada semana de embarazo (a lo sumo 42). La maternidad necesita un
programa que analice esta información, determine e informe:
a. Para cada embarazada, la semana con mayor aumento de peso.
b. El aumento de peso total de cada embarazada durante el embarazo.}

program ej4P7;
const


type
  maternidad = record
    nombre : String;
    apellido : String;
    peso_Pdia_xSem : Real;//PESO PRIMER DIA POR SEMANA DE EMBARAZO
  end;
  
  Lista = ^nodo;

  nodo = record
    dato : maternidad;
    sig : Lista;
  end;

procedure LeerDatos (m:maternidad);
begin
  with m do begin
    ReadLn(nombre);
    ReadLn(apellido);
    ReadLn(peso_Pdia_xSem);
  end;
end;

procedure agregarAdelante (var L:Lista; m:maternidad);
var
  nue:Lista;
begin
  new(nue);
  nue^.dato:=m;
  nue^.sig:=L;
  L:=nue;
end;

procedure recorrerLista (var L:Lista;)
var
  m:maternidad;
begin
  
end;



procedure incisoA ()



























var
begin

end.