﻿CREATE OR REPLACE TRIGGER pipe_sent
AFTER DELETE ON dept
DECLARE
  stat INTEGER;
BEGIN
  DBMS_PIPE.RESET_BUFFER;
  DBMS_PIPE.PACK_MESSAGE('DEPT 테이블의 데이터를 삭제했습니다.');
  stat:=DBMS_PIPE.SEND_MESSAGE('mod_pipe',30);
END;
/