DECLARE
  no  NUMBER;
  err EXCEPTION;
BEGIN
  no := 90;
  IF no <= 100 THEN
    RAISE err;
  END IF;
EXCEPTION
  WHEN err THEN
    DBMS_OUTPUT.PUT_LINE('사용자 정의 예외!');
END;
/