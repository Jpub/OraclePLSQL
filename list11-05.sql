CREATE OR REPLACE PROCEDURE emp_pro2
            (empcur IN OUT cur_pack.emp_type)
IS
  emp_var1 emp.empno%TYPE;
  emp_var2 emp.ename%TYPE;
  emp_var3 emp.sal%TYPE;
BEGIN
  LOOP
    FETCH empcur INTO emp_var1, emp_var2, emp_var3;
    EXIT WHEN empcur%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(emp_var1||' '||
                         emp_var2||' '||
                         emp_var3);
  END LOOP;
  CLOSE empcur;

  OPEN empcur FOR SELECT empno, ename, sal
                    FROM emp WHERE sal > 3000;
    LOOP
      FETCH empcur INTO emp_var1, emp_var2, emp_var3;
      EXIT WHEN empcur%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(emp_var1||' '||
                           emp_var2||' '||
                           emp_var3||' OPEN2');
    END LOOP;
  CLOSE empcur;
END;
/

EXECUTE emp_pro1(10)