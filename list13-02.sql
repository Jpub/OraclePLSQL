CONNECT scott/tiger

ALTER SESSION SET plsql_code_type = 'NATIVE';

CREATE OR REPLACE PROCEDURE native11g
IS
BEGIN
  DBMS_OUTPUT.PUT_LINE('TODAY IS '||to_char(sysdate,'DY'));
END;
/

col plsql_code_type format a10 
SELECT name,type,plsql_code_type
FROM   user_plsql_object_settings
WHERE  plsql_code_type = 'NATIVE';