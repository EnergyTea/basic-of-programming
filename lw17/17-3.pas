PROGRAM Stat(INPUT, OUTPUT);
CONST
  MAXINT = 32767;
VAR         
  Overflow: BOOLEAN;
  Counter, Num, Min, Max, Middle, Sum, D: INTEGER;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
VAR
 Ch: CHAR;
BEGIN{ReadDigit}
  D := 0;
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
  WHILE NOT(EOLN(F)) AND (D <> -1) 
  DO
    BEGIN
      ReadDigit(F, D);
      IF (D <> -1) AND (N < MAXINT)
      THEN
        N := 10 * N + D; 
      IF (N >= MAXINT)
      THEN
        BEGIN
          N := -1;
          D := -1
        END  
    END 
END;  
BEGIN {Stat}
  Min := 32767;
  Max := 0;
  Overflow := FALSE;
  WHILE NOT EOLN(INPUT) AND(NOT Overflow) AND (Counter + 1 <= MAXINT DIV 100)
  DO
    BEGIN
      ReadNumber(INPUT, Num);
      IF (Num  <= (MAXINT - Sum)) AND (Num <> -1)
      THEN
        BEGIN
          Sum := Sum + Num;
          IF Num > Max
          THEN
            Max := Num;  
          IF Num < Min
          THEN
            Min := Num;        
          Counter := Counter + 1;
        END
      ELSE
        Overflow := TRUE
    END;
  IF NOT Overflow
  THEN
    IF (Counter <> 0)
    THEN
      BEGIN
        Middle := (Sum * 100) DIV Counter;       
        WRITELN('Ñðåäíåå àðèôìåòè÷åñêîå: ', Middle DIV 100, '.', Middle MOD 100);
        WRITELN('Ìèíèìàëüíîå: ', Min);
        WRITELN('Ìàêñèìàëüíîå: ', Max);
      END
    ELSE
      WRITELN('íåò çíà÷åíèÿ')  
  ELSE
    WRITELN('Ïåðåïîëíåíèå')
END. {Stat}