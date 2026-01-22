PROGRAM swaptest;
USES csp;
VAR
  myList : LIST;

PROCEDURE Swap(VAR a, b : INTEGER);
VAR
  temp : INTEGER;
BEGIN
  temp := a;
  a := b;
  b := temp;
END;

BEGIN
  RandomList(myList, 5);
  PrintList(myList);
  Swap(myList[1], myList[5]);
  PrintList(myList);
  Readln;
END.
