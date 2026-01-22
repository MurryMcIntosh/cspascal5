PROGRAM testlist;
USES csp;
VAR
  myList : List;
  i : INTEGER;
BEGIN
  Append(myList, 8);
  Append(myList, 10);
  PrintList(myList);
  Append(myList, 12);
  Append(myList, 7);
  Insert(myList, 10, 100);
  PrintList(myList);
  readln;
END.