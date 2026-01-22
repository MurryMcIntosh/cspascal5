PROGRAM tax;

VAR
  owe : BOOLEAN;
  income : INTEGER;
  taxes : REAL;
  source : CHAR;

PROCEDURE PrintTax(tax : REAL; owe : BOOLEAN);
  BEGIN
  IF owe AND (tax > 100) THEN
    BEGIN
    Writeln('The tax owed is ', tax, '.');
    Writeln('Please send a check to the local tax office.')
    END
  ELSE IF NOT owe THEN
    Writeln('Taxes are not owed on tips.')
  ELSE { NOT (owe and (tax >100)) AND NOT NOT owe }
    Writeln('Tax bill is too low, no tax due.')
  END;

FUNCTION CalcTaxes(taxable : INTEGER; sourceType : CHAR) : REAL;
  BEGIN
  IF sourceType = 'w' THEN
    CalcTaxes := 0.35*taxable
  ELSE IF sourcetype = 'd' THEN
    CalcTaxes := 0.15*taxable
  ELSE
    CalcTaxes := taxable
  END;

BEGIN
  REPEAT
  Write('Please enter your wages: ');
  Readln(income); { Prompting the user }
  Write('Enter the source of your income: (w)ages, (d)ividends, (t)ips, (s)top: ');
  Readln(source);

  IF source = 't' THEN
    BEGIN
    owe := false;
    taxes := 0.0
    END
  ELSE
    BEGIN
    owe := true;
    taxes := CalcTaxes(income, source)
    END;

  PrintTax(taxes, owe);
  UNTIL (income = 0) OR (source = 's');
  Readln(income)
END.
