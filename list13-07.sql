CREATE TABLE cust
(cust_id NUMBER,cust_no VARCHAR2(32));

set timing on

BEGIN
  FOR i IN 1..30000 LOOP
    INSERT INTO cust VALUES(i,'CUST_no '||TO_CHAR(i));
  END LOOP;
END;
/