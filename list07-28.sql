ALTER TABLE tab1 MODIFY a NUMBER(5);

SELECT object_name,object_type,status FROM user_objects
WHERE object_name IN ('TAB1','PRO1','FUN1')
ORDER BY 1 DESC;