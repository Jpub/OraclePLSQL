﻿CREATE OR REPLACE PACKAGE over
IS
  PROCEDURE employee(name VARCHAR2);
  PROCEDURE employee(eno NUMBER);
  pub_no NUMBER:=0;
END;
/