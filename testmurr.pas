PROGRAM TestMurry;
USES murry, csp;
VAR
  myList, myList2 : LIST;
BEGIN
  RandomList(myList, 15);
  HeapSort(myList);
END.