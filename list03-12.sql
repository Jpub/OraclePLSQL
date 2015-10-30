DECLARE
  c_count NUMBER := 0;
BEGIN
  LOOP
    EXIT WHEN c_count = 3;
      c_count := c_count + 1;
      DBMS_OUTPUT.PUT_LINE('OK');
  END LOOP;
END;
/