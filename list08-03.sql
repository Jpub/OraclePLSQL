CREATE OR REPLACE PACKAGE BODY test_pack
IS
  pri_no NUMBER:=0;

  PROCEDURE employee_ename(name VARCHAR2)
    IS
    BEGIN
      SELECT sal INTO pri_no FROM emp
                     WHERE ename = name;
      DBMS_OUTPUT.PUT_LINE(pri_no);
    END employee_ename;
  PROCEDURE employee_empno(eno NUMBER)
    IS
    BEGIN
      SELECT sal INTO pub_no FROM emp
                     WHERE empno = eno;
      DBMS_OUTPUT.PUT_LINE(pub_no);
    END employee_empno;
END;
/