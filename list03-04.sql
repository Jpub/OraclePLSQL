DECLARE
  var NUMBER := 15;
BEGIN
  IF var < 10 THEN
    DBMS_OUTPUT.PUT_LINE('���� 10���� �۴�');
  ELSIF var < 20 THEN
    DBMS_OUTPUT.PUT_LINE('���� 20���� �۴�');
  ELSIF var < 30 THEN
    DBMS_OUTPUT.PUT_LINE('���� 30���� �۴�');
  ELSE
    DBMS_OUTPUT.PUT_LINE('�� ��');
  END IF;
END;
/