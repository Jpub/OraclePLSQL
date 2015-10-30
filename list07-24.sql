CREATE OR REPLACE FUNCTION f_return1(var1 VARCHAR2)
RETURN NUMBER
IS
  return_val NUMBER;
BEGIN
  CASE var1
    WHEN 'A' THEN return_val := 1;
    WHEN 'B' THEN return_val := 2;
    ELSE NULL;
  END CASE;
  RETURN(return_val);
END;
/