PROGRAM bool;
USES crt;
VAR
  a, b : INTEGER;
  p, q : BOOLEAN;
  c : CHAR;
BEGIN
  p := 2 + 2 = 4;
  q := false;
  Writeln(p);
  IF p OR q THEN Writeln('if')
  ELSE Writeln('else');

  { Readln(a); }
  a := 15;
  IF (a >= 13) AND (a <= 19) THEN Writeln('Teenager')
  ELSE IF a > 19 THEN Writeln('Adult')
  ELSE Writeln('Child');

  a := 1;
  REPEAT
    IF KeyPressed THEN
    BEGIN
      c := ReadKey;
      ClrScr;
      a := 1;
    END;
    Writeln('a = ', a);
    a := a + 1;
  UNTIL c = 'q';
  Writeln('Out of loop');

  Readln(a)
END.