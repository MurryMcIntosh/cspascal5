unit CopyUnit;
interface
const
  ENDFILE = -1;
  NEWLINE = 10;
  BLANK = 32;
  TAB = 9;
type
  character = -1..127;
function getc(var c : character) : character;
procedure putc(c : character);

implementation
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

END.