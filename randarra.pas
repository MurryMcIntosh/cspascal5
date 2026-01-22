PROGRAM randarray(output);
{ Create an array type and variable }
CONST
  SIZE = 20;
TYPE
  List = ARRAY[1..SIZE] OF INTEGER;
VAR
  arr : List;
  i, sum : INTEGER;
BEGIN
  Randomize;

  FOR i := 1 TO SIZE DO arr[i] := Random(100);

  { Write a FOR loop to print the second half }
  FOR i := round(SIZE/2) + 1 TO SIZE DO Writeln('arr[', i, '] = ', arr[i]);

  sum := 0;
  FOR i := 1 TO SIZE DO sum := sum + arr[i];
  Writeln('Sum = ', sum);

  Read(arr[1]);
END.