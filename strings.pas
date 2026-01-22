PROGRAM strings;
VAR
  s1, s2 : STRING;
  i, j : INTEGER;

FUNCTION substring(s : STRING; start, len : INTEGER) : STRING;
  VAR
    i, stop : INTEGER;
    temps : STRING;
  BEGIN
    IF len > length(s) - start + 1 THEN stop := length(s) - start + 1
    ELSE stop := len;
    FOR i := 1 TO stop DO
      temps[i] := s[start - 1 + i];
    temps[0] := chr(stop);
    substring := temps;
  END;
FUNCTION reverse(s : STRING) : STRING
  VAR
    i, stop : INTEGER;
    temps : STRING;
    tempc : CHAR;
  BEGIN
    temps := s;
    stop := round(length(s)/2);
    FOR i := 1 TO stop DO
    BEGIN
      tempc := temps[i];
      temps[?] := temps[?];
      temps[?] := tempc;
    END;
    temps[0] := ?;
    reverse := temps;
  END;
BEGIN
  Write('Enter a string: ');
  Readln(s1);
  Write('Enter the start: ');
  Readln(i);
  Write('Enter the length: ');
  Readln(j);
  s2 := substring(s1, i, j);
  Writeln('Your substring is: ', s2);
  Writeln('The length of the substring is: ', length(s2));
  Writeln('The floor of half the substring is : ', trunc( length(s2)/2 ) );
  Readln(i);
END.