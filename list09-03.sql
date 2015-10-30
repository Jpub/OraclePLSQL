CREATE OR REPLACE TRIGGER modify_emp
AFTER INSERT OR UPDATE OR DELETE ON emp
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    INSERT INTO audit_table
           VALUES('EMP','INSERT',:new.empno);
  ELSIF DELETING THEN
    INSERT INTO audit_table
           VALUES('EMP','DELETE',:old.empno);
  ELSIF UPDATING THEN
    INSERT INTO audit_table
           VALUES('EMP','UPDATE',:old.empno);
  END IF;
END;
/