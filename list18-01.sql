﻿SHOW USER

CREATE OR REPLACE PROCEDURE emp_upsal
AUTHID CURRENT_USER
IS
BEGIN
  UPDATE emp
  SET sal = 3000
  WHERE empno = 7369;
END;
/

GRANT EXECUTE ON emp_upsal TO SCOTT;

CONNECT scott/tiger

EXECUTE user1.emp_upsal

SELECT empno,sal FROM emp
WHERE  empno = 7369;