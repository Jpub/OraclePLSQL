DECLARE
  var NUMBER := 15;
BEGIN
  CASE
    WHEN var < 10 THEN
      DBMS_OUTPUT.PUT_LINE('값은 10보다 작다');
    WHEN var < 20 THEN
      DBMS_OUTPUT.PUT_LINE('값은 20보다 작다');
    WHEN var < 30 THEN
      DBMS_OUTPUT.PUT_LINE('값은 30보다 작다');
    ELSE
      DBMS_OUTPUT.PUT_LINE('값은 그 외');
  END CASE;

END;
/