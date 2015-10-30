CREATE OR REPLACE PROCEDURE triangle(
              base   IN  NUMBER DEFAULT 10,
              height IN  NUMBER DEFAULT 20,
              area   OUT NUMBER)
IS
BEGIN
  area := (base * height)/2;
END;
/