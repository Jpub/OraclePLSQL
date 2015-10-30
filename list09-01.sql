CREATE OR REPLACE TRIGGER emp_nomod
BEFORE INSERT OR DELETE OR UPDATE ON emp
BEGIN
  IF (TO_CHAR(SYSDATE,'DY') = '��') THEN
    IF DELETING THEN
      raise_application_error
        (-20325,'�Ͽ��Ͽ� ������ ������ �� �� �����ϴ�.');
    ELSIF INSERTING THEN
      raise_application_error
        (-20326,'�Ͽ��Ͽ� ������ �߰��� �� �� �����ϴ�.');
    ELSIF UPDATING THEN
      raise_application_error
        (-20327,'�Ͽ��Ͽ� ������ ������ �� �� �����ϴ�.');
    ELSE
      raise_application_error
        (-20328,'�Ͽ��Ͽ� EMP ���̺��� ������ �� �� �����ϴ�.');
    END IF;
  ELSE NULL;
  END IF;
END;
/