CREATE OR REPLACE TRIGGER instead_tri
INSTEAD OF DELETE ON empdept
BEGIN
  DELETE FROM emp
    WHERE ename = :old.ename;
  DBMS_OUTPUT.PUT_LINE(:old.ename);
END;
/

DELETE FROM empdept
WHERE ename = 'SMITH';