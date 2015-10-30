SHOW USER

CREATE TABLE logoninfo_tbl (time DATE,
                            username VARCHAR2(15));

CREATE OR REPLACE TRIGGER cl_tri
AFTER LOGON ON DATABASE
BEGIN
  INSERT INTO logoninfo_tbl
    VALUES (sysdate,ora_login_user);
END;
/

CONNECT SCOTT/TIGER

CONNECT SYSTEM/******

SELECT TO_CHAR(time,'YYYY/MM/DD HH24:MI:SS')AS time,
username
FROM logoninfo_tbl;