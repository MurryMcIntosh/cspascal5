PROGRAM conversion;
VAR
  l : CHAR;
  i : INTEGER;
  num : STRING;

FUNCTION ctoi(c : CHAR) : INTEGER;
BEGIN
  IF (c >= '0') AND (c <= '9') THEN
    ctoi := Ord(c) - 48
  ELSE
    ctoi := -1;
END;

FUNCTION atoi(s : STRING) : INTEGER;
  VAR
    i, val : INTEGER;
  FUNCTION isDigit(c : CHAR) : BOOLEAN;
    BEGIN
      isDigit := (c >= '0') AND (c <= '9');
    END;
  BEGIN
    i := 1;
    WHILE NOT isDigit(s[i]) AND (i <= Length(s)) DO
      i := i + 1;
    val := 0;
    WHILE isDigit(s[i]) AND NOT (i > Length(s)) DO
    BEGIN
      val := ctoi(s[i]) + 10*val;
      i := i + 1;
    END;
    atoi := val;
END;

FUNCTION itoa(val : INTEGER) : STRING;
  VAR
    s : STRING;
  BEGIN
    s := '';
    { Loop (Repeat Until }
      s := Chr(val MOD 10 + 48) + s;
      val :=
    itoa :=
  END;

BEGIN
  Writeln('Type an integer: ');
  Readln(num);
  i := atoi(num);
  Writeln(i);
  Writeln(itoa(i));
  Readln;
END.