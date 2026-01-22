PROGRAM SoftballHeights(input, output);
CONST
  MAXTEAM = 22;
TYPE
  List = ARRAY[1..MAXTEAM] OF INTEGER;
VAR
  heights : List;
  teamNum : INTEGER;
  average : REAL;
  sum, i : INTEGER;
BEGIN
  Write('How many players on the team? ');
  Readln(teamNum);
  FOR i := 1 TO teamNum DO
  BEGIN
    Write('Enter height for player #', i, ': ');
    Readln(heights[i]);
  END;

  FOR i := 1 TO teamNum DO Writeln(heights[i]);

  Read(i);
END.