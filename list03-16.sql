BEGIN
  GOTO label;
    DBMS_OUTPUT.PUT_LINE('ó��1');
    DBMS_OUTPUT.PUT_LINE('ó��2');
    <<label>>
    DBMS_OUTPUT.PUT_LINE('LABEL ó��');
END;
/