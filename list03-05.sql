﻿DECLARE
  var NUMBER := 20;
BEGIN
  CASE var
    WHEN 10 THEN
      DBMS_OUTPUT.PUT_LINE('값은 10');
    WHEN 20 THEN
      DBMS_OUTPUT.PUT_LINE('값은 20');
    WHEN 30 THEN
      DBMS_OUTPUT.PUT_LINE('값은 30');
    ELSE
      DBMS_OUTPUT.PUT_LINE('값은 그 외');
  END CASE;

END;
/