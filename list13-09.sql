DECLARE
  TYPE c_tabtype IS TABLE OF cust%ROWTYPE
  INDEX BY PLS_INTEGER;
  c_tab c_tabtype;
BEGIN
  FOR i IN 1..30000 LOOP
    c_tab(i).cust_id:= i;
    c_tab(i).cust_no := 'CUSTNO.'||TO_CHAR(i);
  END LOOP;

  FORALL j IN 1..30000
    INSERT INTO cust
      VALUES(c_tab(j).cust_id,c_tab(j).cust_no);
END;
/