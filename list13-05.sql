CREATE OR REPLACE PROCEDURE open_emp(clause VARCHAR2,
                                     no     NUMBER)
IS
  TYPE cv_type IS REF CURSOR;
  cur_cv cv_type;
  emp_rec emp%ROWTYPE;
BEGIN
  OPEN cur_cv FOR 'SELECT * FROM emp
          WHERE '||clause||' :val' USING no;
    LOOP
      FETCH cur_cv INTO emp_rec;
      EXIT WHEN cur_cv%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('EMP '||emp_rec.ename);
    END LOOP;
  CLOSE cur_cv;
END;
/

EXECUTE open_emp('sal >',2500)