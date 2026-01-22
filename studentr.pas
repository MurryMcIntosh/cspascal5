PROGRAM studentrecord;
TYPE
  Student = RECORD
              name : STRING;
              age : INTEGER;
              gpa : REAL;
            END;

VAR
  Students : ARRAY[1..2] OF Student;
  i : INTEGER;

PROCEDURE PrintStudent(studrec : Student);
BEGIN
  WITH studrec DO
  BEGIN
    Writeln('Student name = ', name);
    Writeln('Student age = ', age);
    Writeln('Student GPA = ', gpa:1:2);
  END;
END;

BEGIN
  FOR i := 1 TO 2 DO
  BEGIN
    WITH Students[i] DO
    BEGIN
      Write('What is the name of student ', i, '? ');
      Readln(name);
      Write('What is the age of student ', i, '? ');
      Readln(age);
      Write('What is the GPA of student ', i, '? ');
      Readln(gpa);
    END;
  END;
  PrintStudent(Students[1]);
  PrintStudent(Students[2]);
  Writeln('The name of student 2 is ', Students[2].name);
  Writeln('The age of student 1 is ', Students[1].age);
  Writeln('The average GPA is ', (Students[1].gpa + Students[2].gpa)/2:1:2);

  Readln;
END.