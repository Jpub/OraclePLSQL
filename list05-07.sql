DECLARE
  e_empno number;
BEGIN
  SELECT empno INTO e_empno FROM emp;
EXCEPTION
  WHEN no_data_found THEN
    DBMS_OUTPUT.PUT_LINE('���� ���� ���� �߻�');
  WHEN others THEN
    DBMS_OUTPUT.PUT_LINE('���ܸ� others�� ó��');
END;
/