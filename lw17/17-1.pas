PROGRAM SumDigit(INPUT, OUTPUT);
VAR
  Sum, Number: INTEGER;
  Ch: CHAR;
  F1: TEXT;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
  BEGIN
    RESET(F);
    IF (NOT EOLN(F)) AND (Ch >= '0') AND (Ch <= '9')
    THEN
      READ(F, D);   
  END;  
BEGIN {SumDigit}
  Sum := 0;
  Number:= -1;
  WHILE (NOT EOLN(INPUT))
  DO
    BEGIN 
      READ(INPUT, Ch);
      IF (Ch >= '0') AND (Ch <= '9')
      THEN
        BEGIN
          REWRITE(F1);
          WRITE(F1, Ch);
          ReadDigit(F1, Number);
        END
      ELSE
        BEGIN 
          WHILE (NOT EOLN(INPUT))
          DO
            READ(INPUT, Ch); 
          Number := 0;
        END;     
      Sum := Sum + Number;  
    END;
  WRITELN(OUTPUT, Sum);      
END. {SumDigit}
