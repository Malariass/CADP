{Realizar un programa que lea números enteros desde teclado hasta que se ingrese el valor -1 (que no
debe procesarse) e informe:
a. la cantidad de ocurrencias de cada dígito procesado.
b. el dígito más leído.
c. los dígitos que no tuvieron ocurrencias.
Por ejemplo, si la secuencia que se lee es: 63 34 99 94 96 -1, el programa deberá informar:
Número 3: 2 veces
Número 4: 2 veces
Número 6: 2 veces
Número 9: 4 veces
El dígito más leído fue el 9.
Los dígitos que no tuvieron ocurrencias son: 0, 1, 2, 5, 7, 8}

program ContadorDigitos;
var
  numero, digito, maxDigito: Integer;
  ocurrencias: array[0..9] of Integer;
begin
  // Inicializar el array de ocurrencias a cero
  for digito := 0 to 9 do
    ocurrencias[digito] := 0;

  maxDigito := -1; // Inicializar el dígito más leído como -1

  // Leer números hasta que se ingrese -1
  repeat
    Write('Ingrese un número (-1 para terminar): ');
    Readln(numero);

    // Verificar si el número es -1
    if numero <> -1 then
    begin
      // Procesar cada dígito del número
      while numero <> 0 do
      begin
        digito := numero mod 10; // Obtener el último dígito
        ocurrencias[digito] := ocurrencias[digito] + 1; // Incrementar la ocurrencia
        if ocurrencias[digito] > ocurrencias[maxDigito] then
          maxDigito := digito; // Actualizar el dígito más leído
        numero := numero div 10; // Eliminar el último dígito
      end;
    end;

  until numero = -1;

  // Informar la cantidad de ocurrencias de cada dígito
  for digito := 0 to 9 do
    Writeln('Número ', digito, ': ', ocurrencias[digito], ' veces');

  // Informar el dígito más leído
  Writeln('El dígito más leído fue el ', maxDigito);

  // Informar los dígitos que no tuvieron ocurrencias
  Writeln('Los dígitos que no tuvieron ocurrencias son:');
  for digito := 0 to 9 do
    if ocurrencias[digito] = 0 then
      Write(digito, ' ');

  Readln;
end.



