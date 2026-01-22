PROGRAM Arrays;

CONST
  UPPER = 5;

TYPE
  List = Array [1..UPPER] of INTEGER;

VAR
  myList : List;
  i : INTEGER;
  mysterious : REAL;

FUNCTION mystery(aList : List) : REAL;
  VAR i, s : INTEGER;
  BEGIN
    s := 0;
    FOR i := 1 TO UPPER DO
      s := s + aList[i];
    mystery := s/UPPER;
  END;

BEGIN
  Randomize;
  FOR i := 1 TO UPPER DO
    myList[i] := Random(50);

  mysterious := mystery(myList);
  Writeln('The mystery function applied to myList = ', mysterious);

  Readln(i);
END.