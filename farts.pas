PROGRAM review;
USES graph;
TYPE
{ Create a Record type for a fraction that has a numerator and
  denominator that are integer types }
  Fraction = RECORD
               num : INTEGER;
               den : INTEGER;
             END;
VAR
{ Create two fraction variables }
  f1, f2 : Fraction;
FUNCTION Frac2String(f : Fraction) : STRING;
VAR
  s1, s2 : STRING;
BEGIN
  Str(f.num, s1);
  Str(f.den, s2);
  Frac2String := s1 + '/' + s2;
END;

FUNCTION FractionAdition(f1, f2 : Fraction; VAR f3 : FRACTION);
BEGIN
  f3.num := f1.num*f2.den + f2.num*f1.den;
END;

BEGIN
{ Fill f1 and f2 with values }
  f1.num := 2;
  f1.den := 3;
  f2.num := 4;
  f2.den := 5;

{ Write a Writeln statement to display the 1st and 2nd fraction }
{ 2/3 }
{ 4/5 }
Writeln(Frac2String(f1));
Writeln(Frac2String(f2));

{ Multiply my two fractions and print the result }
Writeln(f1.num * f2.num, '/', f1.den * f2.den);
{ Add the two fractions }
Writeln(f1.num*f2.den + f2.num*f1.den, '/', f1.den * f2.den);

Readln;

END.