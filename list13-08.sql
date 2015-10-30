set timing on

DECLARE
  TYPE num_rec IS TABLE OF cust.cust_id%TYPE
  INDEX BY PLS_INTEGER;
  c_id num_rec;
  TYPE var_rec IS TABLE OF cust.cust_no%TYPE
  INDEX BY PLS_INTEGER;
  c_no var_rec;
BEGIN
  FOR i IN 1..30000 LOOP
    c_id(i):= i;
    c_no(i) := 'CUSTNO.'||TO_CHAR(i);
  END LOOP;

  FORALL j IN 1..30000
    INSERT INTO cust VALUES(c_id(j),c_no(j));
END;
/