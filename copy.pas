PROGRAM copyprog (input, output);
CONST
  ENDFILE = -1;
  NEWLINE = 10;
TYPE
  character = -1..127;
FUNCTION getc(var c : character) : character;
VAR
  ch : char;
BEGIN
  if (eof) then
    c := ENDFILE
  else if (eoln) then
  begin
    readln;
    c := NEWLINE
  end
  else
  begin
    read(ch);
    c := ord(ch)
  end;
  getc := c
END;
PROCEDURE putc (c : character);
BEGIN
  if (c = NEWLINE) then
    writeln
  else
    write(chr(c))
END;
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