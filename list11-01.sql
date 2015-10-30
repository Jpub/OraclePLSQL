CREATE OR REPLACE PROCEDURE open_data(dept_no NUMBER)
IS
  TYPE cv_type IS REF CURSOR;
  cur_cv cv_type;
  emp_rec emp%ROWTYPE;
  dept_rec dept%ROWTYPE;
BEGIN
  OPEN cur_cv FOR SELECT * FROM emp WHERE deptno = dept_no;
    LOOP
      FETCH cur_cv INTO emp_rec;
      EXIT WHEN cur_cv%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('EMP '||emp_rec.ename);
    END LOOP;
  CLOSE cur_cv;

  OPEN cur_cv FOR SELECT * FROM dept WHERE deptno = dept_no;
    LOOP
      FETCH cur_cv INTO dept_rec;
      EXIT WHEN cur_cv%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('DEPT '||dept_rec.dname);
    END LOOP;
  CLOSE cur_cv;
END;
/

EXECUTE open_data(10)