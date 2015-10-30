DECLARE
  var NUMBER;
BEGIN
  var := 10;
  DBMS_OUTPUT.PUT_LINE(var);
  var := var + 10;
  DBMS_OUTPUT.PUT_LINE(var);
END;
/