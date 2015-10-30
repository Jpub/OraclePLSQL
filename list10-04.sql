DECLARE
  dept_row dept%ROWTYPE;
BEGIN
  SELECT * INTO dept_row FROM dept WHERE deptno = 20;
  get_record(dept_row);
END;
/