CREATE OR REPLACE PROCEDURE pipe_receive
IS
  msg VARCHAR2(4000);
  stat INTEGER:=0;
  tim number := 900;
  pipe_end EXCEPTION;
  PRAGMA EXCEPTION_INIT(pipe_end,-06556);
BEGIN
  LOOP
    stat:=DBMS_PIPE.RECEIVE_MESSAGE('mod_pipe',tim);
    DBMS_PIPE.UNPACK_MESSAGE(msg);
    DBMS_OUTPUT.PUT_LINE(msg);
    tim := 1;
  END LOOP;
EXCEPTION
  WHEN pipe_end THEN NULL;
END;
/