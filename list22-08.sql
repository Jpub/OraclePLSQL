CREATE OR REPLACE FUNCTION tab_fun
RETURN nested_type PIPELINED
IS
  nest nested_type := nested_type();
BEGIN
  FOR i IN 1..3 LOOP
    nest.extend;
    nest(i) := 'Part'||i;
    PIPE ROW(nest(i));
  END LOOP;
RETURN;
END;
/

SELECT * FROM table(tab_fun);