DECLARE
  var NUMBER;
BEGIN
  var := 100;
  inout_sample(var);
  DBMS_OUTPUT.PUT_LINE(var);
END;
/