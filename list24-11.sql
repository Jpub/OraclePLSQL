CREATE OR REPLACE PROCEDURE lock_exe
IS
  lock_handle    VARCHAR2(128);
  lock_status    INTEGER;
  release_status INTEGER;
BEGIN
  DBMS_LOCK.ALLOCATE_UNIQUE('lock_pro',lock_handle);
  DBMS_OUTPUT.PUT_LINE('START :'
    ||to_char(sysdate,'MI"분"SS"초"'));
  lock_status := DBMS_LOCK.REQUEST(lock_handle,6,900,TRUE);
  DBMS_OUTPUT.PUT_LINE('LOCK_GET :'
    ||to_char(sysdate,'MI"분"SS"초"'));
  DBMS_LOCK.SLEEP(10);
  release_status := DBMS_LOCK.RELEASE(lock_handle);
  DBMS_OUTPUT.PUT_LINE('LOCK_RELEASE :'
    ||to_char(sysdate,'MI"분"SS"초"'));
END;
/