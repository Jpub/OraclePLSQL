DECLARE
  TYPE tab IS TABLE OF VARCHAR2(10)
                INDEX BY PLS_INTEGER;
  col_table tab;
BEGIN
  col_table(1) := 'Part1';
  col_table(2) := 'Part2';
  col_table(3) := 'Part3';

  DBMS_OUTPUT.PUT_LINE(col_table(1));
  DBMS_OUTPUT.PUT_LINE(col_table(2));
  DBMS_OUTPUT.PUT_LINE(col_table(3));
END;
/