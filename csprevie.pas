PROGRAM cspreview;
CONST
  SIZE = 20;
TYPE
  LIST = ARRAY[0..SIZE] OF INTEGER;
  WordList = ARRAY[0..SIZE] OF STRING;
VAR
  mylist, mylist2 : LIST;
  i, j, n : INTEGER;
  found : BOOLEAN;

PROCEDURE Swap(VAR a, b : INTEGER);
VAR
  temp : INTEGER;
BEGIN
  temp := a;
  a := b;
  b := temp;
END;

BEGIN
  Randomize;
  FOR i := 1 TO SIZE DO
    mylist[i] := Random(50);
  mylist[0] := SIZE;

  FOR i := 1 TO SIZE DO
    Writeln('mylist[', i, '] = ', mylist[i]);

  n := 0;
  WHILE n <= 20 DO
    n := n + 1;

  n := 0
  FOR i := 1 TO SIZE DO
    n := n + i;

  n := 0;
  FOR i := 1 TO SIZE DO
    n := n + mylist[i];

  n := 0;
  FOR i := 1 TO SIZE DO
    n := n + myList[i] MOD 2;

  n := 0;
  FOR i := 1 TO SIZE DO
    IF mylist[i] > 25 THEN
      n := n + 1;

  n := 0;
  FOR i := 1 TO SIZE DO
    IF mylist[i] > 25 THEN
      n := n + mylist[i];
  Writeln('Average = ', n/SIZE);

  n := 0;
  FOR i := 1 TO SIZE DO
    IF mylist[i] MOD 2 = 0 THEN
      n := n + 1;

  n := 0;
  FOR i := 1 TO SIZE DO
    IF mylist[i] MOD 2 = 1 THEN
      n := n + mylist[i];

  found := FALSE;
  FOR i := 1 TO SIZE DO
    IF mylist[i] = 25 THEN
      found := TRUE;

  n := 0;
  FOR i := 1 TO SIZE DO
    IF mylist[i] = 25 THEN
      n := n + 1;

  n := 0;
  FOR i := 1 TO SIZE DO
    IF mylist[i] = 25 THEN
      mylist[i] := 0;

  n := mylist[1];
  FOR i := 2 TO SIZE DO
    IF mylist[i] < n THEN n := mylist[i];

  n := 1
  FOR i := 2 TO SIZE DO
    IF mylist[i] < mylist[n] THEN n := i;

  n := 0;
  FOR i := 1 TO SIZE - 1 DO
    IF mylist[i] = mylist[i + 1] THEN
      n := n + 1;

  found := TRUE;
  FOR i := 1 TO SIZE - 1 DO
    IF mylist[i] > mylist[i + 1] THEN
      found := FALSE;

  found := FALSE;
  FOR i := 1 TO SIZE - 1 DO
    FOR j := i + 1 TO SIZE DO
      IF mylist[i] = mylist[j] THEN
        found := TRUE;

  n := 0;
  FOR i := 1 TO SIZE - 1 DO
    FOR j := i + 1 TO SIZE DO
      IF mylist[i] = mylist[j] THEN
        n := n + 1;

  FOR i := 1 TO SIZE - 1 DO
    FOR j := 1 TO SIZE - i DO
      IF mylist[j] > mylist[j + 1] THEN
        Swap(mylist[j], mylist[j + 1];

  FOR i := 1 TO SIZE - 1 DO
  BEGIN
    n := i;
    FOR j := i + 1 TO SIZE DO
      IF mylist[j] < mylist[n] THEN n := j;
    Swap(mylist[i], mylist[n]);
  END;

  Readln;
END.