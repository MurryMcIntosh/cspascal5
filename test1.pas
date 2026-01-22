PROGRAM test;
USES csp;
VAR
  s : STRING;
BEGIN

  Writeln('Add3(1,2,3) = ', add3(1, 2, 3));
  Writeln('Add3(4,5,6) = ', add3(4, 5, 6));
  Writeln('Pow(2,2) = ', pow(2,2));
  Writeln('Pow(3,3) = ', pow(3,3));
  Writeln('Pow(5,1) = ', pow(5,1));
  Readln(s);
END.