PROGRAM SumDigit(INPUT, OUTPUT);
VAR
  Sum, Number: INTEGER;
  Ch: CHAR;
  F1: TEXT;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
BEGIN
  IF NOT EOLN(F)
  THEN
    READ(F, Ch);
    D := 0;
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
    ELSE
      WHILE NOT EOLN(F)
      DO
        READ(F, Ch)               
END;  
BEGIN {SumDigit}
  Sum := 0;
  IF NOT EOLN(INPUT)
  THEN
    READ(INPUT, Ch);
  IF (Ch >= '0') AND (Ch <= '9')
  THEN 
    BEGIN  
      REWRITE(F1);       
      WRITE(F1, Ch);
      ReadDigit(F1, Number);          
      Sum := Sum + Number; 
      WHILE NOT EOLN(INPUT) AND (Ch >= '0') AND (Ch <= '9')
      DO
        BEGIN            
          READ(INPUT, Ch);
          WRITE(F1, Ch); 
          ReadDigit(F1, Number);          
          Sum := Sum + Number               
        END
    END    
  ELSE
    Sum := -1;      
  WRITELN(OUTPUT, Sum)      
END. {SumDigit}