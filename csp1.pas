UNIT csp;

INTERFACE

{ List Data Type }
CONST
  SIZE = 255;

TYPE
  List = ARRAY[0..SIZE] OF INTEGER;

{ List Functions/Procedures }
FUNCTION Length(VAR aList : LIST) : INTEGER;
PROCEDURE Append(VAR aList : LIST; value : INTEGER);
PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
PROCEDURE PrintList(VAR aList : LIST);
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
{ List Data Functions/Procedures }
FUNCTION Sum(aList : LIST) : INTEGER;
FUNCTION Average(aList : LIST) : REAL;
FUNCTION Median(aList : LIST) : REAL;
FUNCTION Smallest(aList : LIST) : INTEGER;
FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
PROCEDURE Swap(VAR a, b : INTEGER);
PROCEDURE BubbleSort(VAR aList : LIST);
PROCEDURE SelectionSort(VAR aList : LIST);
PROCEDURE InsertionSort(VAR aList : LIST);

{ String Functions }
FUNCTION Len(s : STRING) : INTEGER;
FUNCTION Concat(s1, s2 : STRING) : STRING;
FUNCTION Reverse(s : STRING) : STRING;
FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;

IMPLEMENTATION

{ List Functions/Procedures }
FUNCTION Length(VAR aList : LIST) : INTEGER;
BEGIN
  Length := aList[0];
END;

PROCEDURE Append(VAR aList : LIST; value : INTEGER);
BEGIN
  aList[0] := Length(aList) + 1;
  aList[Length(aList)] := value;
END;

PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
VAR
  index : INTEGER;
BEGIN
  IF i > Length(aList) THEN Append(aList, value)
  ELSE IF i > 0 THEN
  BEGIN
    aList[0] := Length(aList) + 1;
    FOR index := Length(aList) DOWNTO i + 1 DO
      aList[index] := aList[index - 1];
    aList[i] := value;
  END;
END;

PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
VAR
  index : INTEGER;
BEGIN
  IF (i <= Length(aList)) AND (i > 0) THEN
  BEGIN
    FOR index := i TO Length(aList) - 1 DO
      aList[index] := aList[index + 1];
    aList[0] := Length(aList) - 1;
  END;
END;

PROCEDURE PrintList(VAR aList : LIST);
VAR
  i : INTEGER;
BEGIN
  FOR i := 1 to Length(aList) DO
    Writeln('Element #', i, ' = ', aList[i]);
END;

PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
VAR
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO n DO
    Append(aList, Random(100));
END;

FUNCTION Sum(aList : LIST) : INTEGER;
VAR
  i, total : INTEGER;
BEGIN
  total := 0;
  FOR i := 1 TO Length(aList) DO
    total := aList[i] + total;
  Sum := total;
END;

FUNCTION Average(aList : LIST) : Real;
BEGIN
  Average := Sum(aList)/Length(aList);
END;

FUNCTION Median(aList : LIST) : REAL;
VAR
  med : INTEGER;
BEGIN
  IF Length(aList) MOD 2 = 1 THEN
    med := aList[Length(aList) DIV 2 + 1]
  ELSE
    med := (aList[Length(aList) DIV 2] + aList[Length(aList) DIV 2 + 1])/2;
  Median := med;
END;

FUNCTION Smallest(aList : LIST) : INTEGER;
VAR
  i, min : INTEGER;
BEGIN
  min := aList[1];
  FOR i := 2 TO Length(aList) DO
    IF aList[i] < min THEN min := aList[i];
  Smallest := min;
END;

FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
  i : INTEGER;
  Found : BOOLEAN;
BEGIN
  Found := False;
  FOR i := 1 TO Length(aList) DO
    IF aList[i] = value THEN
    BEGIN
      Found := True;
      Break;
    END;
  LinearSearch := Found;
END;

FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
  l, r, mid : INTEGER;
  Found : BOOLEAN;
BEGIN
  Found := FALSE;
  l := 1;
  r := Length(aList);
  REPEAT
    mid := (l + r) DIV 2;
    IF aList[mid] = value THEN
    BEGIN
      Found := TRUE;
      Break;
    END
    ELSE IF aList[mid] < value THEN
      l := mid + 1
    ELSE
      r := mid - 1;
  UNTIL l > r;
  BinarySearch := Found;
END;


PROCEDURE BubbleSort(VAR aList : LIST);
VAR
  i, j : INTEGER;
  Swapped : BOOLEAN;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    Swapped := False;
    FOR j := 1 TO Length(aList) - i DO
      IF aList[j] > aList[j + 1] THEN
      BEGIN
        Swap(aList[j], aList[j + 1]);
        Swapped := True;
      END;
    IF Not Swapped THEN Break;
  END;
END;

PROCEDURE Swap(VAR a, b : INTEGER);
VAR
  temp : INTEGER;
BEGIN
  temp := a;
  a := b;
  b := temp;
END;



PROCEDURE SelectionSort(VAR aList : LIST);
VAR
  i, j, min : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    min := i;
    FOR j := i + 1 TO Length(aList) DO
      IF aList[j] < aList[min] THEN min := j;
    Swap(aList[i], aList[min]);
  END;
END;

{ Sort by taking the next item and swapping into place on the left }
PROCEDURE InsertionSort(VAR aList : LIST);
VAR
  i, j : INTEGER;
BEGIN
  FOR i := 2 TO Length(aList) DO
    FOR j := i DOWNTO 2 DO
      IF aList[j] < aList[j - 1] DO Swap(aList[j], aList[j - 1])
      ELSE Break;
END;


{ String Functions }
FUNCTION Len(s : STRING) : INTEGER;
BEGIN
  Len := ord(s[0]);
END;

FUNCTION Concat(s1, s2 : STRING) : STRING;
VAR
  temps : STRING;
  i : INTEGER;
BEGIN
  temps[0] := chr(Len(s1) + Len(s2));
  FOR i := 1 to Len(s1) DO
    temps[i] := s1[i];
  FOR i := 1 to Len(s2) DO
    temps[Len(s1) + i] := s2[i];
  Concat := temps;
END;

FUNCTION Reverse(s : STRING) : STRING;
VAR
  i : INTEGER;
  temps : STRING;
BEGIN
  FOR i := 1 TO Len(s) DO
    temps[i] := s[Len(s) - i + 1];
  temps[0] := s[0];
  Reverse := temps;
END;

FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
VAR
  temps : STRING;
  i : INTEGER;
BEGIN
  FOR i := 1 TO n DO
    temps[i] := s[i];
  temps[0] := chr(n);
  Prefix := temps;
END;

FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
VAR
  temps : STRING;
  i : INTEGER;
BEGIN
  FOR i := 1 TO n DO
    temps[i] := s[start + i - 1];
  temps[0] := chr(n);
  Substring := temps
END;

END.