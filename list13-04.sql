CREATE OR REPLACE PROCEDURE delete_rows(clause VARCHAR2,
                                        no NUMBER)
IS
  sql_stmt VARCHAR2(100);
BEGIN
  sql_stmt := 'DELETE FROM emp WHERE '||clause||' = :val'; 
  EXECUTE IMMEDIATE sql_stmt USING no; 
  DBMS_OUTPUT.PUT_LINE(sql_stmt);
END;
/

EXECUTE delete_rows('empno',7499)

EXECUTE delete_rows('empno',7521)