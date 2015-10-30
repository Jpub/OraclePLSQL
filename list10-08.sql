DECLARE
  TYPE tab IS TABLE OF VARCHAR2(10)
                 INDEX BY PLS_INTEGER;
  col_table tab;
BEGIN
  col_table(1)   :='Part1';
  col_table(100) :='Part2';
  DBMS_OUTPUT.PUT_LINE(col_table.COUNT);
  DBMS_OUTPUT.PUT_LINE(col_table.FIRST);
  DBMS_OUTPUT.PUT_LINE(col_table.LAST);
  DBMS_OUTPUT.PUT_LINE(col_table.PRIOR(100));
  DBMS_OUTPUT.PUT_LINE(col_table.NEXT(1));
END;
/