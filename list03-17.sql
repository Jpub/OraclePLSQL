DECLARE
  var VARCHAR2(2) := 'OK';
BEGIN
  IF var = 'OK'
    THEN
      DBMS_OUTPUT.PUT_LINE('OK');
    ELSE
      NULL;
  END IF;
END;
/