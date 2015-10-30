ALTER PACKAGE test_pack COMPILE BODY;

SELECT object_name,object_type,status
FROM   user_objects
WHERE  object_name IN ('TEST_PACK','CALL_TEST_PACK');