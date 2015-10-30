DECLARE
  c_count NUMBER := 0;
BEGIN
  WHILE c_count < 3 LOOP
    c_count := c_count + 1;
    DBMS_OUTPUT.PUT_LINE(c_count);
  END LOOP;
END;
/