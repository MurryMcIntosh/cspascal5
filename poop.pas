PROGRAM poop;
VAR
  i, j : INTEGER;
BEGIN
  i := 1;
  Writeln('i list');
  While i < 10 DO
    BEGIN
    Writeln(i);
    i := i + 1;
    END;
  j := 1;
  Writeln('j list');
  While j < 10 DO
    BEGIN
    j := j + 1;
    Writeln(j);
    END;
  readln;
END.

