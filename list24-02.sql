CREATE OR REPLACE TRIGGER alert_sent
AFTER DELETE ON dept
BEGIN
  DBMS_ALERT.SIGNAL('ALERT_TEST',
                    'DEPT 테이블의 데이터를 삭제했습니다.');
END;
/