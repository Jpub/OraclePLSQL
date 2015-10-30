DECLARE
  err EXCEPTION;
  CURSOR dept_cur IS SELECT deptno FROM dept;
BEGIN
  FOR r IN dept_cur LOOP
    IF r.deptno = 30 THEN
      RAISE err;
    ELSE
      DBMS_OUTPUT.PUT_LINE(r.deptno);
    END IF;
  END LOOP;
EXCEPTION
  WHEN err THEN
    DBMS_OUTPUT.PUT_LINE('예외가 발생');
END;
/