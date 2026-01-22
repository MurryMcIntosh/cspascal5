PROGRAM listtest;
USES csp;
VAR
  myList : LIST;
  i : INTEGER;
{ Write a function/procedure PrintList }

BEGIN
  { Write in words what these lines are doing }
  FOR i := 1 to SIZE DO
    Append(myList, Random(100));
  { Create a random list }

  PrintList(myList);
  Readln(i);
END.