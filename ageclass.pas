PROGRAM AgeClassifier(Input, Output);

VAR
  age : INTEGER;
  class : CHAR;

PROCEDURE PrintClass(class : CHAR);
  BEGIN
  IF class = 'c' THEN Writeln('You are a child')
  ELSE IF class = 't'  THEN Writeln('You are a teenager')
  ELSE Writeln('You are an adult');
  END;

FUNCTION ClassifyAge(age :INTEGER) : CHAR;
  BEGIN
  IF age <= 12 THEN ClassifyAge := 'c'
  ELSE IF age <= 19 THEN ClassifyAge := 't'
  ELSE ClassifyAge := 'a';
  END;

BEGIN
  REPEAT
  Write('Enter your age: ');
  Read(age);
  IF (age < 0) OR (age > 120) THEN Writeln('Please enter a number between 0 and 120');
  UNTIL (age >= 0) AND (age <= 120);

  class := ClassifyAge(age);
  PrintClass(class);
  Read(age);
END.