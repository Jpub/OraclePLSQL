DECLARE
  CURSOR emp_cur IS SELECT empno,ename FROM emp
                                WHERE deptno = 10;
BEGIN
  FOR emp_rec IN emp_cur LOOP
    DBMS_OUTPUT.PUT_LINE(emp_rec.empno||' '||emp_rec.ename);
  END LOOP;
END;
/