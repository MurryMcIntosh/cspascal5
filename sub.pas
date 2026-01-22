PROGRAM sub;
VAR
  s1, s2 : STRING;
  i, j : INTEGER;

FUNCTION substring(s : STRING) : STRING;
  VAR
    i : INTEGER;
    temps : STRING;
  BEGIN
    FOR i := 1 TO 3 DO
      temps[i] := s[i + 1];
    temps[0] := chr(3);
    substring := temps;
  END;

BEGIN
  s1 := substring('MurryFurryBlurry');
  Writeln(s1);
  Read(i);
END.