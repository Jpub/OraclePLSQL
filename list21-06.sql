CREATE TABLE drop_table (time DATE,
                         username VARCHAR2(15),
                         object_name VARCHAR2(30),
                         object_type VARCHAR2(15));

CREATE OR REPLACE TRIGGER ddl_tri
AFTER DROP
ON scott.SCHEMA
BEGIN
  INSERT INTO drop_table VALUES (sysdate,
                                 ora_login_user,
                                 ora_dict_obj_name,
                                 ora_dict_obj_type);
END;
/

DROP TABLE test PURGE;

SELECT to_char(time,'YYYY/MM/DD HH24:MI:SS')
  AS time,username,object_name,object_type FROM drop_table;