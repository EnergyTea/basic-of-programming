PROGRAM XPrint(INPUT, OUTPUT);
TYPE
  Display = SET OF 1..100;
VAR
  Cursor: INTEGER;
  Model: CHAR;
PROCEDURE Print(Model: CHAR);
VAR 
  Matrix: Display;
BEGIN
  CASE Model OF
    '0': Matrix := [1..10, 11, 20, 21, 30, 31, 40, 41, 50, 51, 60, 61, 70, 71, 80, 81, 90, 91..100];
    '3': Matrix := [1..10, 20, 30,  40, 50, 52..60,  70,  80, 90, 91..100];
    '8': Matrix := [1..10, 11, 20, 21, 30, 31, 40, 41, 50, 51..60, 61, 70, 71, 80, 81, 90, 91..100];
    '9': Matrix := [1..10, 11, 20, 21, 30, 31, 40, 41, 50, 51..60, 70, 80, 90, 91..100];
  END;
  FOR Cursor := 1 TO 100
  DO
    BEGIN
      IF (Cursor IN Matrix)
      THEN
        WRITE(OUTPUT, 'X')
      ELSE
        WRITE(OUTPUT, ' ');
      IF (Cursor = 10) OR (Cursor = 20) OR (Cursor = 30) OR (Cursor = 40) OR (Cursor = 50) OR (Cursor = 60) OR (Cursor = 70) OR (Cursor = 80) OR (Cursor = 90)
      THEN
        WRITELN
    END; 
END;    
BEGIN
  IF NOT EOLN
  THEN
    BEGIN
      READ(Model);
      Print(Model)
    END;  
  WRITELN
END. 
