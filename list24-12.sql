CREATE OR REPLACE TRIGGER dept_check
AFTER DELETE ON dept
DECLARE
  mes VARCHAR2(100);
BEGIN
  mes := CONVERT('DEPT 테이블이 삭제되었습니다.','iso-2022-kr');
  UTL_MAIL.SEND(sender     => 'jeipub@gmail.com',
                recipients => 'jeipub@gmail.com',
                subject    => 'WARNING',
                message    => mes,
                mime_type  => 'text/plain; charset=iso-2022-kr');
END;
/