DECLARE
  e_empno NUMBER;
BEGIN
  SELECT empno INTO e_empno FROM emp;
END;
/