CREATE VIEW empdept
AS SELECT ename,sal,dname FROM emp,dept
WHERE emp.deptno = dept.deptno;

DELETE FROM empdept
WHERE ename = 'SMITH';