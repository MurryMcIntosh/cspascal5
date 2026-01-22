PROGRAM graphics;
USES Graph;
VAR
  gd, gm : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  SetBkColor(15);
  SetColor(4);
  Line(5, 5, 400, 800);

  SetColor(6);
  Circle(100, 100, 50);

  SetColor(8);
  Rectangle(50, 50, 300, 250);

  Readln(gd);
  CloseGraph;   { CloseGraph is a procedure with 0 inputs }
END.