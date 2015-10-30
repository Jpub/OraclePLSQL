DECLARE
  rec dept%ROWTYPE;
BEGIN
  rec.deptno := 60;
  rec.dname  := 'PERSONNEL';
  rec.loc    := 'CHICAGO';

  UPDATE dept SET ROW = rec WHERE deptno = 50;
END;
/

SELECT * FROM dept WHERE deptno = 60;