CREATE OR REPLACE TRIGGER emp_nomod
BEFORE INSERT OR DELETE OR UPDATE ON emp
BEGIN
  IF (TO_CHAR(SYSDATE,'DY') = '일') THEN
    IF DELETING THEN
      raise_application_error
        (-20325,'일요일에 데이터 삭제는 할 수 없습니다.');
    ELSIF INSERTING THEN
      raise_application_error
        (-20326,'일요일에 데이터 추가는 할 수 없습니다.');
    ELSIF UPDATING THEN
      raise_application_error
        (-20327,'일요일에 데이터 삭제는 할 수 없습니다.');
    ELSE
      raise_application_error
        (-20328,'일요일에 EMP 테이블의 변경은 할 수 없습니다.');
    END IF;
  ELSE NULL;
  END IF;
END;
/