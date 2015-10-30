DECLARE
  TYPE cust_type IS TABLE OF cust%ROWTYPE
  INDEX BY PLS_INTEGER;
  cust_tab cust_type;
  CURSOR cust_cl IS SELECT * FROM cust;
BEGIN
  OPEN cust_cl;
    LOOP
      FETCH cust_cl BULK COLLECT INTO cust_tab LIMIT 20000;
      EXIT WHEN cust_cl%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('FETCH '||cust_tab.count||' ROWS');
    END LOOP;
  CLOSE cust_cl;
END;
/