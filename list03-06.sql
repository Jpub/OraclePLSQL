DECLARE
  var NUMBER := 15;
BEGIN
  CASE
    WHEN var < 10 THEN
      DBMS_OUTPUT.PUT_LINE('���� 10���� �۴�');
    WHEN var < 20 THEN
      DBMS_OUTPUT.PUT_LINE('���� 20���� �۴�');
    WHEN var < 30 THEN
      DBMS_OUTPUT.PUT_LINE('���� 30���� �۴�');
    ELSE
      DBMS_OUTPUT.PUT_LINE('���� �� ��');
  END CASE;

END;
/