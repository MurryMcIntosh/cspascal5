PROGRAM circles;  { Draw 10 circles with random center and radius }
USES graph;
CONST
  TIMES = 10;
VAR
  gm, gd, i, x, y, r : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  Randomize;

  FOR i := 1 TO TIMES DO
  BEGIN
    x := Random(640);
    y := Random(480);
    r := Random(200);
    if x + r > 640 OR x - r < 0 THEN x := x - (x -r)
    SetColor( Random(16) );
    Circle(x, y, r);  { 640x480 screen size }
  END;

  Read(i);
  CloseGraph;
END.
