CREATE OR REPLACE PROCEDURE file_unload_dept
IS
  CURSOR dept_cur IS SELECT dname FROM dept;
  file_hand       UTL_FILE.FILE_TYPE;
  day             DATE;
  name            VARCHAR2(20);
BEGIN
  SELECT sysdate INTO day FROM dual;
  name:=TO_DATE(day)||'dept.txt';
  file_hand:=UTL_FILE.FOPEN('UTL_DATA',name,'a');
  FOR dept_rec IN dept_cur LOOP
    UTL_FILE.PUT_LINE(file_hand,dept_rec.dname);
  END LOOP;
  UTL_FILE.FCLOSE(file_hand);
END;
/

EXECUTE file_unload_dept