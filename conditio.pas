PROGRAM Conditionals; { Number guessing game }
VAR
  num, guess, i : INTEGER;
BEGIN
  Randomize;
  num := Random(10);


  REPEAT { Iteration, loop over the same code }
    Write('Guess an number between 0 and 9: ');
    Read(guess);
    IF guess < num THEN Writeln('Incorrect, too low')
    ELSE IF guess > num THEN Writeln('Incorrect, too high')
    ELSE Writeln('That is correct');
  UNTIL num = guess;

  Read(guess)
END.
