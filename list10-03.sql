CREATE OR REPLACE PROCEDURE get_record(rec dept%ROWTYPE)
IS
BEGIN
  DBMS_OUTPUT.PUT_LINE(rec.deptno||'
                    '||rec.dname||'
                    '||rec.loc);
END;
/