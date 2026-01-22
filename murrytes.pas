PROGRAM murrytest;
USES murry, csp;

VAR
  myList : LIST;
  i : INTEGER;
BEGIN
  RandomRangeList(myList, 10, 2, 4);
  PrintList(myList);
  Readln;
END.