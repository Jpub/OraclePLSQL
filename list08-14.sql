CREATE OR REPLACE PROCEDURE lock_pro
IS
BEGIN
  FOR i in 1..5 LOOP
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(SYSDATE,'HH24:MI:SS'));
    DBMS_LOCK.SLEEP(1);
  END LOOP;
END;
/

EXECUTE lock_pro