CREATE OR REPLACE PROCEDURE pro_sample
IS
  no NUMBER := 10;
BEGIN
  no := no + 100;
  DBMS_OUTPUT.PUT_LINE(no);
END pro_sample;
/