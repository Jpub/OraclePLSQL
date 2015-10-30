DECLARE
  CURSOR emp_cur(d_no NUMBER) IS SELECT empno,ename FROM emp
                                         WHERE deptno = d_no;
  d_var  NUMBER;
BEGIN
  d_var := &DEPTNO;
  FOR emp_rec IN emp_cur(d_var) LOOP
    DBMS_OUTPUT.PUT_LINE(emp_rec.empno||' '||emp_rec.ename);
  END LOOP;
END;
/