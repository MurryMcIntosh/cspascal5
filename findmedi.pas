PROGRAM FindMedian;
USES csp;
VAR
  myList : LIST;
  n : INTEGER;

FUNCTION Median(aList : LIST) : REAL; { Assumes aList is sorted }
VAR
  med : REAL;
BEGIN
  { Check if length is even or odd }
    { If even, average middle two }
    { If odd, find middle element }
  { Return result }
  Median := med;
END;

BEGIN
  { Ask user how many random items }
  REPEAT
    Writeln('How many random items for your list?');
    Readln(n);
    { Check if n is good and reask if not }
    IF (n <= 0) OR (n > SIZE) THEN
      Writeln('N should be positive and less than ', SIZE);
  UNTIL (n > 0) AND (n <= SIZE);
  { Add n random items to myList }
  RandomList(myList, n);
  PrintList(myList);
  Writeln('Average of myList = ', Average(myList):5:2);
  { Sort the list and print it out }
  BubbleSort(myList);
  PrintList(myList);
  Readln;
END.