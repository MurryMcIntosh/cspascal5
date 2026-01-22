PROGRAM sort;
USES csp;
VAR
  aList : LIST;
  i, j, temp : INTEGER;
BEGIN
  RandomList(aList, 15);
  Writeln('Unsorted:');
  PrintList(aList);
  Readln;

  BubbleSort(aList);
  Writeln('Sorted:');
  PrintList(aList);
  Readln;
END.