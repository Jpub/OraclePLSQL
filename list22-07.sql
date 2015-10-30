CREATE OR REPLACE TYPE nested_type IS TABLE OF VARCHAR2(10);
/

CREATE OR REPLACE FUNCTION tab_fun
RETURN nested_type
IS
  nest nested_type := nested_type();
BEGIN
  FOR i IN 1..3 LOOP
    nest.extend;
    nest(i) := 'Part'||i;
  END LOOP;
RETURN nest;
END;
/

SELECT * FROM table(tab_fun);