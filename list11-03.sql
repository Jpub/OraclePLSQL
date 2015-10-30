CREATE OR REPLACE PROCEDURE emp_pro1(dno emp.deptno%TYPE)
IS
  emp_cv cur_pack.emp_type;
BEGIN
  OPEN emp_cv FOR SELECT empno,ename,sal
               FROM emp WHERE deptno = dno;
  emp_pro2(emp_cv);
END;
/