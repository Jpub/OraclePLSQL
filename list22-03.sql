DECLARE
  TYPE varray_type IS VARRAY(2) OF VARCHAR2(10);
  varray1 varray_type;
BEGIN
  varray1 := varray_type('Part1','Part2');
  DBMS_OUTPUT.PUT_LINE(varray1(1));
  DBMS_OUTPUT.PUT_LINE(varray1(2));
END;
/