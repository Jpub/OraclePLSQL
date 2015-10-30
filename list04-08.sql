DECLARE
  CURSOR emp_cur IS SELECT sal FROM emp
             WHERE deptno = 10 FOR UPDATE;
BEGIN
  FOR emp_rec IN emp_cur LOOP
    IF emp_rec.sal < 2500 THEN
      UPDATE emp SET sal = sal+100
          WHERE CURRENT OF emp_cur;
    END IF;
  END LOOP;
END;
/