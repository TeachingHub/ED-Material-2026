unit uConjunto;

interface

uses
  SysUtils, uHashTable;

type
  TConjunto = record
    table_hash: tHashTable;
    num_elems: integer;
  end;

procedure initialize(var s: TConjunto);
procedure add(var s: TConjunto; key: string);
procedure remove(var s: TConjunto; key: string);
function is_in(s: TConjunto; key: string): boolean; // No es válido "in" como nombre de función, se cambia a "is_in"
function size(s: TConjunto): integer;

implementation

procedure initialize(var s: TConjunto);
begin
  uHashTable.initialize(s.table_hash);
  s.num_elems := 0;
end;

procedure add(var s: TConjunto; key: string);
begin
  if not is_in(s, key) then
  begin
    uHashTable.add(s.table_hash, key);
    Inc(s.num_elems);
  end;
end;

procedure remove(var s: TConjunto; key: string);
begin
  if is_in(s, key) then
  begin
    uHashTable.remove(s.table_hash, key);
    Dec(s.num_elems);
  end;
end;

function is_in(s: TConjunto; key: string): boolean;
begin
  is_in := uHashTable.contains(s.table_hash, key);
end;

function size(s: TConjunto): integer;
begin
  size := s.num_elems;
end;

end.
