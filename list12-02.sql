CREATE OR REPLACE PROCEDURE drop_table(tab_name VARCHAR2)
IS
  sql_stmt VARCHAR2(100) := 'DROP TABLE '|| tab_name;
BEGIN
  DBMS_OUTPUT.PUT_LINE(sql_stmt);
  EXECUTE IMMEDIATE sql_stmt;
END;
/

EXECUTE drop_table('salgrade')