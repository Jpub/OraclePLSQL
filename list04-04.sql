BEGIN
  FOR emp_rec IN (SELECT empno,ename FROM emp
                        WHERE deptno = 10) LOOP
    DBMS_OUTPUT.PUT_LINE(emp_rec.empno||' '||emp_rec.ename);
  END LOOP;
END;
/