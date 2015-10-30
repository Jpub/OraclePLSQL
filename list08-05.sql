CREATE OR REPLACE PACKAGE helper_pak
  ACCESSIBLE BY (main_pak)
IS
  PROCEDURE h1;
  PROCEDURE h2;
END;
/

CREATE OR REPLACE PACKAGE BODY helper_pak
IS

  PROCEDURE h1
    IS
    BEGIN
      DBMS_OUTPUT.PUT_LINE('Helper procedure h1');
  END;

  PROCEDURE h2
    IS
    BEGIN
      DBMS_OUTPUT.PUT_LINE('Helper procedure h2');
  END;
END;
/

CREATE OR REPLACE PACKAGE main_pak
IS
  PROCEDURE m1;
  PROCEDURE m2;
END;
/

CREATE OR REPLACE PACKAGE BODY main_pak
IS

  PROCEDURE m1
    IS
    BEGIN
      DBMS_OUTPUT.PUT_LINE('MAIN procedure p1');
    helper_pak.h1;
  END;

  PROCEDURE m2
    IS
    BEGIN
      DBMS_OUTPUT.PUT_LINE('MAIN procedure p2');
    helper_pak.h2;
  END;
END;
/

EXECUTE main_pak.m1

EXECUTE helper_pak.h1