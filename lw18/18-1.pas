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
BEGIN {AverageScore}
  ClassTotal := 0;
  Student := 0;
  WHILE Student < ClassSize
  DO 
    BEGIN      
      Student := Student + 1;
      TotalScore := 0;
      WhichScore := 0;
      WRITELN('Student ', Student, ':');
      WHILE WhichScore < NumberOfScores
      DO
        BEGIN
          READ(NextScore);
          WhichScore := WhichScore + 1;  
          TotalScore := TotalScore + NextScore;
        END;
      READLN;
      TotalScore := TotalScore * 10;
      Ave := TotalScore DIV NumberOfScores;
      IF (Ave MOD 10) >= 5
      THEN
        WRITELN('Average: ', Ave DIV 10 + 1)
      ELSE
        WRITELN('Average: ', Ave DIV 10);
      ClassTotal := ClassTotal + TotalScore;
    END;
  WRITELN;
  WRITELN('Class average:');
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
END.  {AverageScore}

