PROGRAM testinsertsort;
USES csp;
VAR
  myList : LIST;
  i, j : INTEGER;
PROCEDURE Swap(VAR a, b : INTEGER);
  VAR
    temp : INTEGER;
  BEGIN
    temp := a;
    a := b;
    b := temp;
  END;
BEGIN
  RandomList(myList, 20);
  PrintList(myList);
  FOR i := 2 TO Length(myList) DO
    FOR j := i DOWNTO 2 DO
      IF myList[j] < myList[j - 1] THEN Swap(myList[j], myList[j - 1])
      ELSE Break;
  PrintList(myList);
  Readln;
END.