BEGIN
  GOTO label;
    DBMS_OUTPUT.PUT_LINE('처리1');
    DBMS_OUTPUT.PUT_LINE('처리2');
    <<label>>
    DBMS_OUTPUT.PUT_LINE('LABEL 처리');
END;
/