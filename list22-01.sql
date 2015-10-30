DECLARE
  TYPE  nested_type IS TABLE OF VARCHAR2(10);
  nest1 nested_type;
BEGIN
  nest1 := nested_type('Part1','Part2');
  DBMS_OUTPUT.PUT_LINE(nest1(1));
  DBMS_OUTPUT.PUT_LINE(nest1(2));
END;
/