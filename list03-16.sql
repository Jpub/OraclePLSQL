BEGIN
  GOTO label;
    DBMS_OUTPUT.PUT_LINE('贸府1');
    DBMS_OUTPUT.PUT_LINE('贸府2');
    <<label>>
    DBMS_OUTPUT.PUT_LINE('LABEL 贸府');
END;
/