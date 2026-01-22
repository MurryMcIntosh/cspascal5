PROGRAM subprogram;

VAR
  a, b, c : INTEGER;

PROCEDURE write3(x : INTEGER);
BEGIN
  Writeln('1st x - ', x);
  Writeln('2nd x - ', x);
  Writeln('3rd x - ', x);
END;

FUNCTION domath(a, b : INTEGER) : INTEGER;
BEGIN
  domath := 2*a - b;
END;

BEGIN
  a := -2;
  b := 5*a;
  c := 3*b;
  Writeln(a);

  a := Abs(c);
  Writeln(a);
  Writeln(Abs(b));
  write3(a);
  write3(99);

  b := domath(a, c);
  Writeln( domath(5, b) + 1);

  Readln(a);
END.