PROGRAM geo;
USES graph, crt;
VAR
  gm, gd, line : INTEGER;
  key : CHAR;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  key := ReadKey;
  line := 1;
  SetBkColor(0);
  WHILE key <> 'q' DO
  BEGIN
    OutTextXY(0, line, 'You typed ' + key);
    key := ReadKey;
    ClearDevice;
    DrawFrame;
    line := line + 1;
  END;
  CloseGraph;
END.