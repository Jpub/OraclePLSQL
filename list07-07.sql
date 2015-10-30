CREATE OR REPLACE PROCEDURE triangle(base NUMBER DEFAULT 10,
                                     height NUMBER DEFAULT 20)
IS
  area NUMBER;
BEGIN
  area := (base * height)/2;
  DBMS_OUTPUT.PUT_LINE(area);
END;
/