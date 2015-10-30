DECLARE
  TYPE tab IS TABLE OF dept%ROWTYPE
                 INDEX BY PLS_INTEGER;
  table_rec tab;
  CURSOR dept_cl IS SELECT * FROM dept;
  n NUMBER := 0;
BEGIN
  FOR r IN dept_cl LOOP
    n := n + 1;
    table_rec(n) := r;
    DBMS_OUTPUT.PUT_LINE (table_rec(n).deptno||' '||
                          table_rec(n).dname||' '||
                          table_rec(n).loc);
  END LOOP;
END;
/