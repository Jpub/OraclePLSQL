DECLARE
  err EXCEPTION;
  CURSOR dept_cur IS SELECT deptno FROM dept;
BEGIN
  FOR r IN dept_cur LOOP
    BEGIN
      IF r.deptno = 30 THEN
        RAISE err;
      ELSE
        DBMS_OUTPUT.PUT_LINE(r.deptno);
      END IF;
    EXCEPTION
      WHEN err THEN
        DBMS_OUTPUT.PUT_LINE('예외가 발생');
    END;
  END LOOP;
END;
/