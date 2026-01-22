PROGRAM copyprog (input, output);
USES COPYUNIT;
PROCEDURE copy;
VAR
  c : character;
BEGIN
  while (getc(c) <> ENDFILE) do
    putc(c)
END;
BEGIN
  copy
END.