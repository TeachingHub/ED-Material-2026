program ejemplo_conjunto;

uses
  SysUtils, uConjunto, uHashTable;

var
  s: TConjunto;

begin
  uConjunto.initialize(s);

  uConjunto.add(s, 'manzana');
  uConjunto.add(s, 'banana');
  uConjunto.add(s, 'ciruela');
  uConjunto.add(s, 'banana'); // intento de duplicado

  WriteLn('Tamaño (debe ser 3): ', uConjunto.size(s));
  WriteLn('Contiene banana? ', BoolToStr(uConjunto.is_in(s, 'banana'), True));
  WriteLn('Contiene pera? ', BoolToStr(uConjunto.is_in(s, 'pera'), True));

  uConjunto.remove(s, 'banana');
  WriteLn('Después de borrar banana, tamaño (debe ser 2): ', uConjunto.size(s));
  WriteLn('Contiene banana? ', BoolToStr(uConjunto.is_in(s, 'banana'), True));

  WriteLn('Estado interno de la tabla hash:');
  uHashTable.show_table_state(s.table_hash);
end.
