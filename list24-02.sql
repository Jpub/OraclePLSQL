CREATE OR REPLACE TRIGGER alert_sent
AFTER DELETE ON dept
BEGIN
  DBMS_ALERT.SIGNAL('ALERT_TEST',
                    'DEPT ���̺��� �����͸� �����߽��ϴ�.');
END;
/