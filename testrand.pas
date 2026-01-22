PROGRAM TestRandom;
USES csp;
VAR
  myList : LIST;
  n : INTEGER;

FUNCTION Smallest(aList : LIST) : INTEGER;
VAR
  min, i : INTEGER;
BEGIN
  min := aList[1];
  FOR i := 2 TO Length(aList) DO
    IF aList[i] < min THEN min := aList[i];
  Smallest := min;
END;

BEGIN
  REPEAT
    Writeln('Enter how many random items');
    Readln(n);
    IF (n <= 0) OR (n > SIZE) THEN
      Writeln('Your number should be between 1 and ', SIZE);
  UNTIL (n > 0) AND (n <= SIZE);
  RandomList(myList, n);
  Average(myList);
  PrintList(myList);
  Writeln('Smallest element is ', Smallest(myList));
  Readln;
END.