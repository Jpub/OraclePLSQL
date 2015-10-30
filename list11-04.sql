CREATE OR REPLACE PROCEDURE emp_pro2(
               empcur IN cur_pack.emp_type)
IS
  emp_var1 emp.empno%TYPE;
  emp_var2 emp.ename%TYPE;
  emp_var3 emp.sal%TYPE;
BEGIN
  LOOP
    FETCH empcur INTO emp_var1, emp_var2, emp_var3;
    EXIT WHEN empcur%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(emp_var1||'  '||
                         emp_var2||'  '||
                         emp_var3);
  END LOOP;
END;
/

EXECUTE emp_pro1(10)