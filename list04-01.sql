DECLARE
  e_ename emp.ename%TYPE;
  e_hiredate emp.hiredate%TYPE;
BEGIN
  SELECT ename,hiredate INTO e_ename,e_hiredate FROM emp
                                       WHERE empno = 7369;
  DBMS_OUTPUT.PUT_LINE(e_ename||' '||e_hiredate);
END;
/