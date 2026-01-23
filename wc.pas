PROGRAM wc;
USES CopyUnit;

VAR
  nc, nl, nw : INTEGER;
  c : CHARACTER;
  inword : BOOLEAN;
BEGIN
  nc := 0;
  nl := 0;
  nw := 0;
  inword := FALSE;
  WHILE(getc(c) <> ENDFILE) DO
  BEGIN
    nc := nc + 1;
    IF c = NEWLINE THEN nl := nl + 1;

    IF (c = BLANK) OR (c = NEWLINE) OR (c = TAB) THEN inword := FALSE
    ELSE IF inword = FALSE THEN
    BEGIN
      nw := nw + 1;
      inword := TRUE;
    END;

  END;
  Writeln('Number of characters: ', nc);
  Writeln('Number of lines:      ', nl);
  Writeln('Number of words:      ', nw);
END.
