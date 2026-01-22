PROGRAM testconcat;
USES csp;
VAR s : STRING;
BEGIN
  Writeln(Concat('Hello', 'World'));
  Writeln(Concat('Mr ', 'Murry'));
  Readln(s);
END.