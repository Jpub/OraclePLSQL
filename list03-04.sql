DECLARE
  var NUMBER := 15;
BEGIN
  IF var < 10 THEN
    DBMS_OUTPUT.PUT_LINE('값은 10보다 작다');
  ELSIF var < 20 THEN
    DBMS_OUTPUT.PUT_LINE('값은 20보다 작다');
  ELSIF var < 30 THEN
    DBMS_OUTPUT.PUT_LINE('값은 30보다 작다');
  ELSE
    DBMS_OUTPUT.PUT_LINE('그 외');
  END IF;
END;
/