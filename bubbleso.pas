PROGRAM TestSort;
USES csp;
VAR
  myList : LIST;
  i, j, temp : INTEGER;
BEGIN
  RandomList(myList, 20);
  Writeln('Unsorted:');
  PrintList(myList);
  Readln;
  BubbleSort(myList);
  Writeln('Sorted:');
  PrintList(myList);
  Readln;
END.