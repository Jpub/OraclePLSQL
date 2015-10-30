DECLARE
  TYPE rec IS RECORD
    (a NUMBER(2),
     b VARCHAR2(6));
  record_type  rec;
  record_type2 rec;
BEGIN
  record_type.a := 1;
  record_type.b := 'Part1';
  record_type2 := record_type;
  DBMS_OUTPUT.PUT_LINE(record_type2.a||' '||record_type2.b);
END;
/