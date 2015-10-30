CREATE OR REPLACE PROCEDURE bulk_bind1
           (e_sal NUMBER,clause VARCHAR2)
IS
  TYPE empname IS TABLE OF emp.ename%TYPE
  INDEX BY PLS_INTEGER;
  e_name empname;
BEGIN
  EXECUTE IMMEDIATE 'UPDATE emp SET sal = :1
     WHERE '||clause||'RETURNING ename INTO :2'
        USING e_sal RETURNING BULK COLLECT INTO e_name;
  DBMS_OUTPUT.PUT_LINE('급여를 업데이트한 직원명');
  DBMS_OUTPUT.PUT_LINE('--------------------');
  FOR i IN e_name.FIRST..e_name.LAST LOOP
    DBMS_OUTPUT.PUT_LINE(e_name(i));
  END LOOP;
END;
/

EXECUTE bulk_bind1(3000,'deptno = 20')