DECLARE
  CURSOR emp_cur IS SELECT sal,empno FROM emp
                            WHERE deptno = 10;
BEGIN
  FOR emp_rec IN emp_cur LOOP
    IF emp_rec.sal < 2500 THEN
      UPDATE emp SET sal = sal+100
          WHERE empno = emp_rec.empno;
    END IF;
  END LOOP;
END;
/