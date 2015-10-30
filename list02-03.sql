DECLARE
  var dept.deptno%TYPE;
BEGIN
  SELECT deptno INTO var FROM dept
             WHERE loc = 'NEW YORK';
  DBMS_OUTPUT.PUT_LINE(var);
END;
/