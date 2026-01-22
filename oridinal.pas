PROGRAM ordinal;
VAR
  num : WORD;
  ans : STRING;
FUNCTION toOrdinal(n : WORD) : STRING;
{ 1 <= n <= 9 }
  VAR ending : STRING;
  BEGIN
    IF n = 1 THEN ending := 'st'
    ELSE IF n = 2 THEN ending := 'nd'
    ELSE IF n = 3 THEN ending := 'rd'
    ELSE ending := 'th';
    toOrdinal := chr(n + 48) + ending;
  END;
BEGIN
  Writeln(toOrdinal(1));
  Writeln(toOrdinal(2));
  Writeln(toOrdinal(3));
  Writeln(toOrdinal(4));
  Writeln(toOrdinal(9));
  Readln(num);
END.