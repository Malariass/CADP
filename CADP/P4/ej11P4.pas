{El colectivo de fotógrafos ArgenPics desea conocer los gustos de sus seguidores en las redes sociales. Para
ello, para cada una de las 200 fotos publicadas en su página de Facebook, cuenta con la siguiente
información: título de la foto, el autor de la foto, cantidad de Me gusta, cantidad de clics y cantidad de
comentarios de usuarios. Realizar un programa que lea y almacene esta información. Una vez finalizada la
lectura, el programa debe procesar los datos e informar:
a) Título de la foto más vista (la que posee mayor cantidad de clics).
b) Cantidad total de Me gusta recibidas a las fotos cuyo autor es el fotógrafo “Art Vandelay”.
c) Cantidad de comentarios recibidos para cada una de las fotos publicadas en esa página.}


program ej11P4;
const
  total_fotos = 200;
type
  fotos = record
    titulo : String[20];
    autor : String[20];
    cant_mg : Integer;
    cant_clics : Integer;
    cant_comment : Integer;
  end;
  vFotos = array [1..total_fotos] of titul0;

procedure LeerFotos (var F:fotos);
begin
  with F do begin
    ReadLn(titulo);
    ReadLn(autor);
    ReadLn(cant_mg);
    ReadLn(cant_clics);
    ReadLn(cant_comment);
  end;
end;

procedure CargarInformacion (var v:vFotos; F:fotos);
var
  i:Integer;
begin
  for i:=1 to total_fotos do begin
    LeerFotos(F);
    v[i]:= F;
    WriteLn('la cantidad de comentarios para la foto ',i,'es :',F.cant_comment);//c) Cantidad de comentarios recibidos para cada una de las fotos publicadas en esa página.
  end;
end;

procedure MasClics (v:vFotos;maxClics:Integer);  //a) Título de la foto más vista (la que posee mayor cantidad de clics).
var
  i:Integer;
  titulo:String;
begin
  for i:=1 to total_fotos do begin
    if (v[i].cant_clics > maxClics) then begin
      maxClics:=v[i].cant_clics;
      titulo:=v[i].titulo;
    end;      
  end;
  WriteLn('el titulo de la publicacion mas vista es: ',titulo);
end;

procedure MaxMG (var v:vFotos; totalMG:Integer);//b) Cantidad total de Me gusta recibidas a las fotos cuyo autor es el fotógrafo “Art Vandelay”.
var
  i:Integer;
begin
  for i:=1 to total_fotos do begin
    if (v[i].autor = 'Art Vandelay') and (v[i].cant_mg > totalMG) then
      totalMG:=totalMG+v[i].cant_mg;
  end;
  WriteLn('la cantidad total de Me Gustas en las fotos de Art Vandelay es: ',totalMG);
end;


var
v:vFotos;
F:fotos;
maxClics,totalMG:Integer;
begin
  maxClics:=0;
  totalMG:=0;
  CargarInformacion(v,F);
  MasClics(v,maxClics);
  MaxMG(v,totalMG);
end.
