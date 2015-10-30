DECLARE
  TYPE emp_type IS TABLE OF emp%ROWTYPE
  INDEX BY PLS_INTEGER;
  emp_tab emp_type;
  CURSOR emp_cl IS SELECT * FROM emp WHERE deptno = 20;
BEGIN
  OPEN emp_cl;
    FETCH emp_cl BULK COLLECT INTO emp_tab;
  CLOSE emp_cl;
  FOR i IN emp_tab.FIRST..emp_tab.LAST LOOP
    DBMS_OUTPUT.PUT_LINE(emp_tab(i).ename);
  END LOOP;
END;
/