PROGRAM cpumode;
USES dos;
VAR
  cpuFamily, cpuType : BYTE;
  regs : Registers;
BEGIN
  regs.AX := $0;
  Intr($1A, regs);
  cpuType := Hi(regs.AX);
  cpuFamily := Lo(regs.AX);

  Writeln('CPU/Mode Detector');
  case cpuType of
    0: Writeln('8086');
    1: Writeln('80286');
    3: Writeln('80386');
    4: Writeln('80486');
    5: Writeln('Pentium');
  else
    Writeln('Unknown: ', cpuType);
  end;

  Readln;
End.