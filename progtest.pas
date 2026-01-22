PROGRAM progtypes;
TYPE
  prog = ARRAY[1..3] OF STRING;
VAR
  myprog : prog;
  i, j, k : INTEGER;
BEGIN
  myprog[1] := 'Assign :=';
  myprog[2] := 'IF cond THEN';
  myprog[3] := 'FOR i := start TO end DO';
  FOR i := 1 TO 3 DO
    FOR j := 1 TO 3 DO
      FOR k := 1 TO 3 DO
      BEGIN
        Writeln(myprog[i]);
        Writeln(myprog[j]);
        Writeln(myprog[k]);
        Readln;
      END;
END.