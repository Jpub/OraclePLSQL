CREATE OR REPLACE TRIGGER check_sal
BEFORE UPDATE OF sal ON emp
FOR EACH ROW
WHEN(new.sal/old.sal<=0.7)
BEGIN
  raise_application_error(-20005,'한계 값을 초과한 감봉입니다');
END;
/