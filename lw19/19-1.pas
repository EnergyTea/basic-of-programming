PROGRAM Prime(INPUT, OUTPUT);
CONST  
  MIN = 2;
  MAX = 100;
VAR
  Sieve: SET OF MIN .. MAX;
  Counter, Num, Check: INTEGER;
BEGIN {Prime}
  Sieve := [MIN .. MAX];
  Counter := MIN;
  WHILE Counter <= MAX
  DO
    BEGIN
      Num := Counter;
      IF (Counter IN Sieve)
      THEN
        WRITE(Counter, ', '); 
      WHILE (Num <= MAX)
      DO
        BEGIN
          IF (Num MOD Counter = 0)
          THEN
            Sieve := Sieve - [Num];
          Num := Num + 1 
        END;      
    Counter := Counter + 1  
  END;                   
END. {Prime}  
