PROGRAM stats;
USES csp;
VAR
  myList : LIST;
  n : INTEGER;
BEGIN
  REPEAT
    Writeln('How many random numbers for your list?');
    Readln(n);
  IF (n <= 0) OR (n > SIZE) THEN
    Writeln('Your number must be between 1 and ', SIZE);
  UNTIL (n > 0) AND (n <= SIZE);
  RandomList(myList, n);
  BubbleSort(myList);
  PrintList(myList);

  Writeln('The average = ', Average(myList):3:2 );

  Writeln('What number you looking for?');
  Readln(n);

  Writeln('Linear search');
  IF LinearSearch(myList, n) THEN Writeln('Found it')
  ELSE Writeln('Not there');

  Writeln('Binary search');
  IF BinarySearch(myList, n) THEN Writeln('Found it')
  ELSE Writeln('Not there');
  Readln;
END.