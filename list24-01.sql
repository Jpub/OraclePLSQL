CREATE OR REPLACE PROCEDURE sql_select_dept
                       (where_clause VARCHAR2)
IS
  cid  INTEGER;
  row  INTEGER;
  name VARCHAR2(10);
BEGIN
  cid:=DBMS_SQL.OPEN_CURSOR;
  DBMS_SQL.PARSE(cid,'SELECT dname FROM dept WHERE '
                      || where_clause,DBMS_SQL.NATIVE);
  DBMS_SQL.DEFINE_COLUMN(cid,1,name,10);
  row:=DBMS_SQL.EXECUTE(cid);
  WHILE DBMS_SQL.FETCH_ROWS(cid) > 0 LOOP
    DBMS_SQL.COLUMN_VALUE(cid,1,name);
    DBMS_OUTPUT.PUT_LINE(name);
  END LOOP;
  DBMS_SQL.CLOSE_CURSOR(cid);
END;
/

EXECUTE sql_select_dept('deptno = 10')