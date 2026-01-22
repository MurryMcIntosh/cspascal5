PROGRAM wordcount (input, output);
USES CopyUnit;
VAR
  nc, nl, nw : INTEGER;
  c : character;
  inword : BOOLEAN;
BEGIN
  nc := 0;
  nl := 0;
  nw := 0;
  inword := false;
  WHILE (getc(c) <> ENDFILE) DO
  BEGIN
    IF (c = BLANK) or (c = NEWLINE) or (c = TAB) then
    BEGIN
      inword := false;
      IF (c = NEWLINE) THEN nl := nl + 1;
    END
    ELSE IF (not inword) THEN
    BEGIN
      inword := true;
      nw := nw + 1
    END;
    nc := nc + 1
  END;
  WriteLn(nl, ' ', nw, ' ', nc)
END.