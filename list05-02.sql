DECLARE
  e_empno NUMBER;
BEGIN
  SELECT empno INTO e_empno FROM emp;
EXCEPTION
  WHEN others THEN
    DBMS_OUTPUT.PUT_LINE('예외 발생!');
END;
/