DECLARE
  TYPE tab_rec IS TABLE OF emp.empno%TYPE
  INDEX BY PLS_INTEGER;
  emp_no tab_rec;
BEGIN
  DELETE FROM EMP WHERE deptno = 20
      RETURNING empno BULK COLLECT INTO emp_no;
  FOR i IN emp_no.FIRST..emp_no.LAST LOOP
    DBMS_OUTPUT.PUT_LINE(emp_no(i));
  END LOOP;
END;
/