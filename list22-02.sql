DECLARE
  TYPE  nested_type IS TABLE OF VARCHAR2(10);
  nest1 nested_type := nested_type();
BEGIN
  nest1.EXTEND(2);
  nest1(1) := 'Part1';
  nest1(2) := 'Part2';
  DBMS_OUTPUT.PUT_LINE(nest1(1));
  DBMS_OUTPUT.PUT_LINE(nest1(2));
END;
/