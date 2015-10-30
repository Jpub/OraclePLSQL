CREATE OR REPLACE PACKAGE pub_pack
IS
  pub_no NUMBER;
END;
/

BEGIN
  pub_pack.pub_no:=1000;
  DBMS_OUTPUT.PUT_LINE(pub_pack.pub_no);
END;
/

BEGIN
  DBMS_OUTPUT.PUT_LINE(pub_pack.pub_no + 1000);
END;
/