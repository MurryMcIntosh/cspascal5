PROGRAM probability;
VAR
  i : INTEGER;
  p : INTEGER;
BEGIN
  { Red = 20%, Blue = 50%, Yellow = 30% }
  { Figure out the denominator for the probability fraction }
  Randomize;
  FOR i := 1 TO 20 DO
  BEGIN
  p := Random(10); { Put denominator into Random function }
  IF p >= 8 THEN Writeln('Red')
  ELSE IF p >= 3 THEN Writeln('Blue')
  ELSE Writeln('Yellow');
  END;
  Readln;
END.