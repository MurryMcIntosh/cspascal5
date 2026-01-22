Program Graphics;
Uses Graph, Crt;
CONST
  MAXX = 640;
  MAXY = 480;
TYPE
  Triangle = ARRAY[1..4] OF PointType;
var
  Gd, Gm: Integer;
  c: Char;
  x, y, i, p: Integer;
  MyColor, NumColor : Word;
  MyTri : Triangle;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, 'C:\DOS\TP7\BGI');
  SetColor(Red);
  x := 0;
  y := 0;
  NumColor := GetMaxColor;
  Randomize;
  REPEAT
    p := Random(8);
    FOR i := 1 TO 3 DO
    BEGIN
      IF p < 5 THEN
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2);
        MyTri[i].Y := Random(MAXY DIV 2);
      END
      ELSE IF p < 7 THEN
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2) + MAXX DIV 2;
        MyTri[i].Y := Random(MAXY DIV 2);
      END
      ELSE IF p < 9 THEN
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2);
        MyTri[i].Y := Random(MAXY DIV 2) + MAXY DIV 2;
      END
      ELSE
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2) + MAXX DIV 2;
        MyTri[i].Y := Random(MAXY DIV 2) + MAXY DIV 2;
      END;
    END;
    MyColor := Random(NumColor);
    SetColor(MyColor);
    MyTri[4] := MyTri[1];
    SetFillStyle(11, Random(NumColor));
    FillPoly(4, MyTri);
  UNTIL KeyPressed;

  Repeat
    if KeyPressed then
    begin
      c := ReadKey;
      ClearDevice;
      CASE c OF
        'w': y := y - 5;
        's': y := y + 5;
        'a': x := x - 5;
        'd': x := x + 5;
      END;
      Circle(x + 150, y + 150, 50);
    end;
  Until c = 'q';
  CloseGraph;
end.
