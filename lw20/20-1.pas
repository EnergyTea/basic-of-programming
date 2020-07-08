PROGRAM XPrint(INPUT, OUTPUT);
CONST
  MIN = 1;
  MAX = 25;
TYPE
  Display = SET OF MIN..MAX;
VAR
  Cursor: INTEGER;
  Model: CHAR;    
  Matrix: Display;
PROCEDURE Identif(VAR Model: CHAR; VAR Matrix: Display);
BEGIN {Identif} 
  CASE Model OF
    'R': Matrix := [1, 2, 3, 6, 8, 11, 12, 16, 18, 21, 24];
    'U': Matrix := [1, 5, 6, 10, 11, 15, 16, 20, 22, 23, 24];
    'S': Matrix := [1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 15, 20, 21, 22, 23, 24, 25];
    'L': Matrix := [1, 6, 11, 16, 21, 22, 23, 24, 25];
    'A': Matrix := [5, 9, 10, 13, 15, 17, 18, 19, 20, 21, 25];
    'N': Matrix := [1, 5, 6, 7, 10, 11, 13, 15, 16, 19, 20, 21, 25];
  END
END; {Identif}  
PROCEDURE Print(VAR Matrix: Display);
BEGIN
  FOR Cursor := MIN TO MAX
  DO
    BEGIN
      IF (Cursor IN Matrix)
      THEN
        WRITE(OUTPUT, 'X')
      ELSE
        WRITE(OUTPUT, ' ');
      IF (Cursor MOD 5 = 0)
      THEN
        WRITELN
    END; 
END;    
BEGIN
  IF NOT EOLN
  THEN
    BEGIN
      READ(Model);
      Identif(Model, Matrix);
      Print(Matrix);
    END;  
  WRITELN
END. 