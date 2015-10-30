CREATE OR REPLACE PROCEDURE triangle(base NUMBER,height NUMBER)
IS
  area NUMBER;
BEGIN
  area := (base * height)/2;
  DBMS_OUTPUT.PUT_LINE(area);
END;
/

EXECUTE triangle(10,20)