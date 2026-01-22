PROGRAM convert;
VAR
  i : INTEGER;
  c : CHAR;
  s : STRING;

FUNCTION isDigit(c : CHAR) : BOOLEAN;
  BEGIN
    IF (c >= '0') AND (c <= '9') THEN isDigit := True
    ELSE isDigit := False;
  END;

FUNCTION ctoi(c : CHAR) : INTEGER;
  BEGIN
    IF isDigit(c) THEN
      ctoi := ord(c) - 48
    ELSE
      ctoi := -1;
  END;

FUNCTION atoi(s : STRING) : INTEGER;
  VAR
    i, val : INTEGER;
  BEGIN
    i := 1;
    WHILE NOT (isDigit(s[i]) AND (i <= Length(s))) DO
      i := i + 1;

    val := 0;
    WHILE isDigit(s[i]) AND (i <= Length(s)) DO
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
    { Loop (Repeat/Until) }
      s := Chr(val MOD 10 + 48) + s;
      val :=
    { until }
    itoa :=
  END;

BEGIN
  Writeln(atoi('67'));
  Writeln(atoi('326'));
  Writeln(atoi(' 67'));
  Writeln(atoi('abc99'));
  Writeln(atoi('xzy'));
  Writeln(atoi('  ab891 jkf8'));
  Writeln(itoa(123));
  Writeln(itoa(0));
  Writeln(itoa(8894));
  Readln;
END.