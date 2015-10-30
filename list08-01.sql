CREATE OR REPLACE PACKAGE test_pack
IS
        PROCEDURE employee_ename(name VARCHAR2);
        PROCEDURE employee_empno(eno NUMBER);
        pub_no NUMBER:=0;
END;
/