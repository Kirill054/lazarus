var n: integer;
  I_ptr, pI: ^integer;
begin
  n:=5;
  pI:=@n;
  I_ptr:=pI;
  writeln('Значение I_ptr = ', I_ptr^);
end.