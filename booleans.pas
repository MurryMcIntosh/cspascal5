PROGRAM booleans;
USES crt;
VAR
  a, b : INTEGER;
  p, q : BOOLEAN;
  c    : CHAR;
BEGIN
  p := 2 + 2 = 4;
  q := 5 + 5 <> 10;
  IF p OR q THEN Writeln('if')
  ELSE Writeln('else');

  c := 'b';
  IF c = 'a' THEN Writeln('if')
  ELSE Writeln('then');

  a := 1;

  Repeat
    Writeln('Repeating ', a);
    a := a + 1;
    IF KeyPressed THEN
    BEGIN
      c := Readkey;
      a := 1;
    END;
  Until c = 'q';

  Writeln('Out of loop');
  Read(a);
END.