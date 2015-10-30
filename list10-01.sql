DECLARE
  TYPE rec IS RECORD
    (a NUMBER(2),
     b VARCHAR2(6));
  record_type rec;
BEGIN
  record_type.a := 1;
  record_type.b := 'Part1';
  DBMS_OUTPUT.PUT_LINE(record_type.a||' '||record_type.b);
END;
/