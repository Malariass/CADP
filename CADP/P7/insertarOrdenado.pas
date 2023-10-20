program insertarOrdenado;

procedure InsertarOrdenado (var L:Lista; d:dato);
var
  ant,nue,act: lista;
begin
  new(nue):=L;
  nue^.dato:=d;
  ant:= L;
  act:= L;
  while (act <> Nil) and (act^.dato.registro < L^.dato.registro) do begin
    ant:=act;
    act:=act^.sig;
  end;
  if (ant = act) then
    L:= nue
  else
    ant^.sig:= nue;
end;

begin
  
end.