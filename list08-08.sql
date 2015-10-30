CREATE OR REPLACE PACKAGE BODY over
IS
  pri_no NUMBER:=0;

PROCEDURE employee(name VARCHAR2)
IS
BEGIN
  SELECT sal INTO pri_no FROM emp
               WHERE ename = name;
  DBMS_OUTPUT.PUT_LINE(pri_no);
END employee;

PROCEDURE employee(eno NUMBER)
IS
BEGIN
  SELECT sal INTO pub_no FROM emp
                 WHERE empno = eno;
  DBMS_OUTPUT.PUT_LINE(pub_no);
  END employee;
END;
/