CREATE OR REPLACE PROCEDURE del_cascade(clause VARCHAR2,
                                        val    VARCHAR2)
IS
  d_deptno dept.deptno%TYPE;
BEGIN
  EXECUTE IMMEDIATE
       'DELETE FROM dept
         WHERE '||clause||' :p_val
           RETURNING deptno INTO :d_no'
             USING val,OUT d_deptno;
  DBMS_OUTPUT.PUT_LINE(d_deptno);
  UPDATE emp SET deptno = null WHERE deptno = d_deptno;
END;
/

EXECUTE del_cascade('LOC = ','DALLAS')