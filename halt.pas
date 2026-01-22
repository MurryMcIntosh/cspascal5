PROGRAM halt;
VAR
  i : INTEGER;
BEGIN
  i := 1;
  WHILE i > 0 DO
  BEGIN
    Writeln('i = ', i);
    i := i + 1;
  END;
  Writeln('After loop i = ', i);
  Read(i);
END.