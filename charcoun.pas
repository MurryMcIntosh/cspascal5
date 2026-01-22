PROGRAM charcount (input, output);
USES copyunit;
VAR
  nc : INTEGER;
  c : CHARACTER;
BEGIN
  nc := 0;
  WHILE (getc(c) <> ENDFILE) DO
    nc := nc + 1;
  writeln(nc);
END.