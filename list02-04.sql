DECLARE
  d_row dept%ROWTYPE;
BEGIN
  SELECT deptno,dname,loc INTO d_row FROM dept
                             WHERE deptno = 10;
  DBMS_OUTPUT.PUT_LINE(d_row.dname);
END;
/