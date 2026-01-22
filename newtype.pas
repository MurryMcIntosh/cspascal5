PROGRAM newtype;
CONST
  NUMRECS = 2;
VAR
  name : ARRAY[1..NUMRECS] OF STRING;
  age : ARRAY[1..NUMRECS] OF INTEGER;
  gpa : ARRAY[1..NUMRECS] OF REAL;
  i : INTEGER;

BEGIN
  FOR i := 1 TO NUMRECS DO
  BEGIN
  Write('What is the name of student ', i, '? ');
  Readln(name[i]);

  Write('What is the age of student ', i, '? ');
  Readln(age[i]);

  Write('What is the GPA of student ', i, '? ');
  Readln(gpa[i]);
  END;

  Writeln('The name of the 2nd student is ', name[2]);
  Writeln('The age of the 1st student is ', age[1]);
  Writeln('The average GPA of both students is ', (gpa[1] + gpa[2])/2:1:2);

  Readln;

END.