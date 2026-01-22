PROGRAM binary;
VAR
  i : INTEGER;
  w : WORD; { 0 to 2^16-1 }
FUNCTION IntToBinary(n : INTEGER) : STRING;
  VAR
    result : STRING;
    sign : STRING;
  BEGIN
    IF n = 0 THEN result := '0'
    ELSE
    BEGIN
      result := '';
      sign := '';
      IF n < 0 THEN
      BEGIN
        n := -1*n;
        sign := '-';
      END;
      WHILE n > 0 DO
      BEGIN
        result := Chr(Ord('0') + (n MOD 2)) + result;
        n := n DIV 2;
      END;
    END;
    IntToBinary := sign + result;
  END;

BEGIN
  i := 1;
  w := 1;
  WHILE i <> 0 DO
  BEGIN
    Writeln(i, ' = ', IntToBinary(i));
    i := i + 1;
  END;
  Readln;

  WHILE w > 0 DO
  BEGIN
    Writeln(w, ' = ', IntToBinary(w));
    w := 2*w;
  END;
  Writeln(w);
  Readln;
END.