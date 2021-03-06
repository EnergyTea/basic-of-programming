PROGRAM SumDigit(INPUT, OUTPUT);
VAR
  Number, D: INTEGER;
  Ch: CHAR;
  F1: TEXT;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
BEGIN{ReadDigit}
  D := 0;
  IF NOT(EOLN(F))
  THEN
    READ(F, Ch);  
  IF Ch = '1' THEN D := 1 ELSE
  IF Ch = '2' THEN D := 2 ELSE
  IF Ch = '3' THEN D := 3 ELSE
  IF Ch = '4' THEN D := 4 ELSE
  IF Ch = '5' THEN D := 5 ELSE
  IF Ch = '6' THEN D := 6 ELSE
  IF Ch = '7' THEN D := 7 ELSE
  IF Ch = '8' THEN D := 8 ELSE
  IF Ch = '9' THEN D := 9 ELSE
  IF Ch = '0' THEN D := 0 
  ELSE
    D := -1;   
END;{ReadDigit}       
PROCEDURE ReadNumber(VAR F: TEXT; VAR N: INTEGER);
BEGIN
  N := 0;
  WHILE NOT(EOLN(F)) AND (D <> -1) AND (N <> -1) 
  DO
    BEGIN
      ReadDigit(F, D);
      IF (D <> -1) 
      THEN
        IF ((MAXINT DIV 10 = N) AND (MAXINT MOD 10 < D)) OR (MAXINT DIV 10 < N)
        THEN
          N := 10 * N + D
        ELSE            
          IF (N > MAXINT DIV 10)
          THEN
            BEGIN
              N := -1;
              D := -1
            END;  
    END 
END;  
BEGIN {SumDigit}
  ReadNumber(INPUT, Number);
  WRITELN(OUTPUT, Number)      
END. {SumDigit}