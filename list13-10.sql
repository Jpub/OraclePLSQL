DECLARE
  TYPE emp_type IS TABLE OF emp%ROWTYPE
  INDEX BY PLS_INTEGER;
  emp_tab emp_type;
BEGIN
  SELECT * BULK COLLECT INTO emp_tab FROM emp
                               WHERE deptno = 20;
  FOR i IN emp_tab.FIRST..emp_tab.LAST LOOP
    DBMS_OUTPUT.PUT_LINE(emp_tab(i).ename);
  END LOOP;
END;
/