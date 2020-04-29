PROGRAM SumDigit(INPUT, OUTPUT);
VAR
  Sum, Number: INTEGER;
  Ch: CHAR;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
BEGIN
  IF NOT EOLN(F)
  THEN
    READ(F, Ch);
    D := -1;
    IF Ch = '0' THEN D := 0 ELSE
    IF Ch = '1' THEN D := 1 ELSE
    IF Ch = '2' THEN D := 2 ELSE
    IF Ch = '3' THEN D := 3 ELSE
    IF Ch = '4' THEN D := 4 ELSE
    IF Ch = '5' THEN D := 5 ELSE
    IF Ch = '6' THEN D := 6 ELSE
    IF Ch = '7' THEN D := 7 ELSE
    IF Ch = '8' THEN D := 8 ELSE
    IF Ch = '9' THEN D := 9             
END;  
BEGIN {SumDigit}
  Number := 0;
  Sum := 0;
  WHILE (NOT EOLN) AND (Number <> -1)
  DO
    BEGIN
      ReadDigit(INPUT, Number);
      IF Number <> -1
      THEN
        Sum := Sum + Number
    END;
  WRITELN(Sum)      
END. {SumDigit}