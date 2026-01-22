PROGRAM ex6;
TYPE
  StudentRecord = RECORD
  age : INTEGER;
  gpa : REAL;
  name : CHAR;
  END;
VAR
  students : ARRAY[1..2] OF StudentRecord;
  i : INTEGER;


PROCEDURE PrintStudent(student : StudentRecord);
BEGIN
  Writeln('Student name : ', student.name);
  Writeln('Student age : ', student.age);
  Writeln('Student gpa : ', student.gpa:1:2);
END;



BEGIN
  FOR i := 1 TO 2 DO students[i] := NewStudent;
  FOR i := 1 TO 2 DO PrintStudent(students[i]);
  Readln;
END.

PROCEDURE NewStudent(VAR temp : StudentRecord);
VAR
  temp : StudentRecord;
BEGIN
  WITH temp DO
    BEGIN
      Write('Enter name of student: ');
      Readln(name);
      Write('Enter age of student: ');
      Readln(age);
      Write('Enter gpa of student: ');
      Readln(gpa);
    END;
  NewStudent := temp;
END;