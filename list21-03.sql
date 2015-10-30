SHOW USER

CREATE TABLE log_table (time DATE,
                        username VARCHAR2(15),
                        error_num NUMBER);

CREATE OR REPLACE TRIGGER event_tri
AFTER SERVERERROR ON DATABASE
BEGIN
  INSERT INTO log_table VALUES
    (sysdate,ora_login_user,ora_server_error(1));
END;
/