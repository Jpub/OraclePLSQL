CREATE OR REPLACE PROCEDURE delete_table(tab_name VARCHAR2,
                                         clause VARCHAR2)
IS
  sql_stmt VARCHAR2(100);
BEGIN
  sql_stmt := 'DELETE FROM '||tab_name||' WHERE '||clause;
  DBMS_OUTPUT.PUT_LINE(sql_stmt);
  EXECUTE IMMEDIATE sql_stmt;
END;
/

EXECUTE delete_table('emp','deptno = 10')