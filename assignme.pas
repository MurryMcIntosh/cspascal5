PROGRAM assignment;
VAR
  x, y, z : INTEGER;
BEGIN
  x := 10;
  y := 20;
  z := 5;
  Writeln('x is equal to ', x);
  Writeln('y is equal to ', y);
  Writeln('z is equal to ', z);
  Writeln('The sum of x, y, and z is ', x + y + z);

  x := 2*y;
  y := z - x;
  z := 3*z;
  Writeln('x is now equal to ', x);
  Writeln('y is now equal to ', y);
  Writeln('z is now equal to ', z);

  Readln(x);
END.