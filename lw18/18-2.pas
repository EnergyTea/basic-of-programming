PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
TYPE
  Score = 0 .. 100;
VAR
  WhichScore: 0 .. NumberOfScores;
  Student: 0 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
  Ch: CHAR;      
  Surname: TEXT;
PROCEDURE WriteSurname(VAR Fin, Fout: TEXT);
BEGIN {WriteSurname}
  Ch := 'a';
  WHILE (NOT(EOLN(Fin))) AND (Ch <> ' ')
  DO                
    BEGIN
      READ(Fin, Ch);
      WRITE(Fout, Ch)
    END;
  WRITELN(Fout)  
END; {WriteSurname} 
BEGIN {AverageScore}
  ClassTotal := 0;
  Student := 0;
  WHILE (Student < ClassSize)
  DO 
    BEGIN      
      Student := Student + 1;
      TotalScore := 0;
      WhichScore := 0;
      WRITELN(OUTPUT, 'Student ', Student, ':');
      REWRITE(Surname);
      IF (NOT(EOLN(INPUT)))
      THEN
        BEGIN
          READ(INPUT, Ch);
          WRITE(Surname, Ch)
        END;
      WriteSurname(INPUT, Surname);
      WHILE (WhichScore < NumberOfScores)
      DO
        BEGIN
          READ(NextScore);
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1
        END;
      READLN(INPUT);
      RESET(Surname);
      WriteSurname(Surname, OUTPUT);
      TotalScore := TotalScore * 10;
      Ave := TotalScore DIV NumberOfScores;
      IF (Ave MOD 10) >= 5
        THEN
          WRITELN(OUTPUT, 'Average: ', Ave DIV 10 + 1)
        ELSE
          WRITELN(OUTPUT, 'Average: ', Ave DIV 10);
        ClassTotal := ClassTotal + TotalScore;
      END;
  WRITELN('Class average:');
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
END.  {AverageScore}
