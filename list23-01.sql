﻿CREATE OR REPLACE PROCEDURE wraptest
IS
  val NUMBER;
BEGIN
  val := 100;
  DBMS_OUTPUT.PUT_LINE(val);
END;
/