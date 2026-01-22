UNIT murry;

INTERFACE
USES csp;

TYPE

PNode = ^TNode;

TNode = RECORD
    key : INTEGER;
    next : PNode;
END;


PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
PROCEDURE RandomRangeList(VAR aList : LIST; n, low, high : INTEGER);
FUNCTION IsInList(aList : LIST; val : INTEGER) : BOOLEAN;
FUNCTION PosInList(aList : LIST; val : INTEGER) : INTEGER;
FUNCTION NumInList(aList : LIST; val : INTEGER) : INTEGER;
FUNCTION MinFromPos(aList : LIST; i : INTEGER) : INTEGER;
PROCEDURE SwapAt(VAR aList : LIST; i, j : INTEGER);

PROCEDURE StraightInsertion(VAR aList : LIST);
PROCEDURE StraightInsertion2(VAR aList : LIST);
PROCEDURE StraightInsertion3(VAR aList : LIST);
PROCEDURE StraightSelection(VAR aList : LIST);
PROCEDURE StraightSelection2(VAR aList : LIST);
PROCEDURE BubbleSort(VAR aList : LIST);
PROCEDURE Heapsort(VAR aList : LIST);

IMPLEMENTATION

CONST
  MAXWORD = 65535;

PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
VAR
  i : INTEGER;
BEGIN
  IF n > SIZE THEN n := SIZE;
  aList[0] := n;
  FOR i := 1 TO n DO
    aList[i] := Random(MAXWORD);
END;

PROCEDURE RandomRangeList(VAR aList : LIST; n, low, high : INTEGER);
VAR
  i : INTEGER;
BEGIN
  IF n > SIZE THEN n := SIZE;
  aList[0] := n;
  FOR i := 1 TO n DO
    aList[i] := Random(high - low + 1) + low;
END;

FUNCTION IsInList(aList : LIST; val : INTEGER) : BOOLEAN;
VAR
  i : INTEGER;
BEGIN
  IsInList := FALSE;
  FOR i := 1 to Length(aList) DO
    IF aList[i] = val THEN
    BEGIN
      IsInList := TRUE;
      Break;
    END;
END;

FUNCTION PosInList(aList : LIST; val : INTEGER) : INTEGER;
VAR
  i : INTEGER;
BEGIN
  PosInList := 0;
  FOR i := 1 TO Length(aList) DO
    IF aList[i] = val THEN
    BEGIN
      PosInList := i;
      Break;
    END;
END;

FUNCTION NumInList(aList : LIST; val : INTEGER) : INTEGER;
VAR
  i, count : INTEGER;
BEGIN
  count := 0;
  FOR i := 1 to Length(aList) DO
    IF aList[i] = val THEN
      count := count + 1;
  NumInList := count;
END;

FUNCTION MinFromPos(aList : LIST; i : INTEGER) : INTEGER;
VAR
  index, min : INTEGER;
BEGIN
  min := i;
  FOR index := i TO Length(aList) DO
    IF aList[index] < aList[min] THEN
      min := index;
  MinFromPos := min;
END;

PROCEDURE SwapAt(VAR aList : LIST; i, j : INTEGER);
VAR
  temp : INTEGER;
BEGIN
  temp := aList[i];
  aList[i] := aList[j];
  aList[j] := temp;
END;

PROCEDURE StraightInsertion(VAR aList : LIST);
VAR
  i, j, x : INTEGER;
BEGIN
  FOR i := 2 TO Length(aList) DO
  BEGIN
    x := aList[i];
    FOR j := i - 1 DOWNTO 0 DO
    BEGIN
      IF aList[j] < x THEN Break
      ELSE aList[j + 1] := aList[j];
    END;
    aList[j + 1] := x;
  END;
END;

PROCEDURE StraightInsertion2(VAR aList : LIST);
VAR
  i, j, x : INTEGER;
BEGIN
  FOR i := 2 TO Length(aList) DO
  BEGIN
    FOR j := i - 1 DOWNTO 0 DO
      IF aList[i] > aList[j] THEN break;
    x := aList[i];
    Remove(aList, i);
    Insert(aList, j + 1, x);
  END;
END;

FUNCTION FindPos(aList : List; i : INTEGER) : INTEGER;
VAR
  index, pos : INTEGER;
BEGIN
  FOR index := i - 1 DOWNTO 1 DO
    IF aList[index] < aList[i] THEN Break;
  IF NOT ((index = 1) AND (aList[i] < aList[index])) THEN
    index := index + 1;
  FindPos := index;
END;

PROCEDURE ShiftRight(VAR aList : LIST; i, j : INTEGER);
VAR
  index, val : INTEGER;
BEGIN
  val := aList[i];
  FOR index := i DOWNTO j DO
    aList[index] := aList[index - 1];
  aList[j] := val;
END;

PROCEDURE StraightInsertion3(VAR aList : LIST);
VAR i : INTEGER;
BEGIN
  FOR i := 2 TO Length(aList) DO
    ShiftRight(aList, i, FindPos(aList, i));
END;

PROCEDURE StraightSelection(VAR aList : LIST);
VAR
  i, j, k, x : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    k := i;
    x := aList[i];
    FOR j := i + 1 TO Length(aList) DO
      IF aList[j] < x THEN
      BEGIN
        k := j;
        x := aList[j];
      END;

    aList[k] := aList[i];
    aList[i] := x;
  END;
END;

PROCEDURE StraightSelection2(VAR aList : LIST);
VAR i, k : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
    SwapAt(aList, MinFromPos(aList, i), i);
END;

PROCEDURE BubbleNext(VAR aList : LIST; i : INTEGER);
VAR j : INTEGER;
BEGIN
  FOR j := Length(aList) DOWNTO i DO
    IF aList[j] < aList[j - 1] THEN
      SwapAt(aList, j, j - 1);
END;

PROCEDURE BubbleSort(VAR aList : LIST);
VAR i, j : INTEGER;
BEGIN
  FOR i := 2 to Length(aList) DO
    BubbleNext(aList, i);
END;

PROCEDURE Heapsort(VAR aList : LIST);
VAR
  l, r : INTEGER;
  x : INTEGER;

PROCEDURE Sift;
VAR
  i, j : INTEGER;
  x : INTEGER;
BEGIN
  i := l;
  j := 2*i; { first child of i }
  x := aList[i]; { save value of node to be sifted down }
  WHILE j <= r DO
  BEGIN
    IF j < r THEN { ensure there is a sibling node }
      IF aList[j] < aList[j + 1] THEN j := j + 1; { choose larger child of i }
    IF x >= aList[j] THEN Break; { if saved value is larger, break and put it where it goes }
    aList[i] := aList[j];
    i := j; { point at larger child }
    j := 2*i { point at new first child }
  END;
  aList[i] := x; { place original node at correct child position }
END; { Sift }

BEGIN
  r := Length(aList); { r = far right side }
  FOR l := Length(aList) DIV 2 DOWNTO 1 DO { start at rightmost tree and alternate }
    Sift;
  WHILE r > 1 DO
  BEGIN
    x := aList[1];
    aList[1] := aList[r];
    aList[r] := x;
    r := r - 1;
    Sift;
  END;
END; { Heapsort }

BEGIN
  Randomize;
END.
