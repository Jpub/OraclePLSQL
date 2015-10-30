DROP FUNCTION fun1;

SELECT object_name,object_type,status FROM user_objects
WHERE object_name = 'PRO1';

ALTER PROCEDURE pro1 COMPILE;

SHOW ERRORS