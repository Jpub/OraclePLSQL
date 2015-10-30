DECLARE
  CURSOR emp_cur IS SELECT empno,ename FROM emp
                                 WHERE deptno = 10;
  emp_rec emp_cur%ROWTYPE;
BEGIN
  OPEN emp_cur;
    LOOP
      FETCH emp_cur INTO emp_rec;
      EXIT WHEN emp_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(emp_rec.empno||' '||emp_rec.ename);
    END LOOP;
  CLOSE emp_cur;
END;
/