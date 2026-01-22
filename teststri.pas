-PROGRAM teststrings;
USES csp;
VAR
  s : STRING;
BEGIN
  IF prefix('hello', 10) = 'hello' THEN Writeln('pass bad prefix')
  ELSE Writeln('fail');
  IF substring('hello', 3, 10) = 'llo' THEN Writeln('pass bad n in substring')
  ELSE Writeln('fail');
  IF substring('hello', 7, 3) = '' THEN Writeln('pass bad start in substring')
  ELSE Writeln('fail');
END.

