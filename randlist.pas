PROGRAM RandList;
USES csp;
VAR
  myList : List;
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO 20 DO
    Append(myList, Random(67) + 1);
  PrintList(myList);

  { See if 67 is in the list }
  FOR i := 1 TO 20 DO
    IF myList[i] = 67 THEN
      Writeln('Six seeeeven');

  Readln;
END.