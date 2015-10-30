DECLARE
  rec dept%ROWTYPE;
BEGIN
  rec.deptno := 50;
  rec.dname  := 'SE';
  rec.loc    := 'DETROIT';

  INSERT INTO dept
  VALUES rec;
END;
/

SELECT * FROM dept WHERE deptno = 50;