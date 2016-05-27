DECLARE
  e_empno NUMBER;
BEGIN
  SELECT empno INTO e_empno FROM emp
                    WHERE empno = 7369;
  IF e_empno > 1000 THEN
    RAISE_APPLICATION_ERROR(-20001,'empno값이 잘못되었습니다!');
  END IF;
END;
/