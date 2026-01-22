PROGRAM userinput;
CONST
  SIZE = 7;
TYPE
  GradeList = ARRAY[1..SIZE] of INTEGER;
VAR
  n, times, i, sum : INTEGER;
  grades : GradeList;

FUNCTION GetValue(low, high : INTEGER) : INTEGER;
  VAR
    num : INTEGER;
  FUNCTION Valid(a, low, high : INTEGER) : Boolean;
    BEGIN
      Valid := (a >= low) AND (a <= high) { in between 0 and 50 }
    END;
  BEGIN
    REPEAT
    Write('Enter a number between ', low, ' and ', high);
    Read(num);
    IF NOT Valid(num, low, high) THEN Writeln('Try again');
    UNTIL Valid(num, low, high);
    GetValue := num;
  END;

BEGIN
{ Ask the user how many numbers they will enter }
{ Loop that many times }
{ Sum up all the numbers the user gives }
  times := GetValue(4, SIZE);
  sum := 0;
  FOR i := 1 TO times DO
  BEGIN
    grades[i] := GetValue(0, 100);
  END;

  FOR i := 1 to times DO sum := sum + grades[i];

  Writeln('sum = ', sum);
  Writeln('average = ', sum/times);
  Read(n);
END.