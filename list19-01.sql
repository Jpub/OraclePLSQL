SHOW USER

@%ORACLE_HOME%\rdbms\admin\utldtree.sql

EXECUTE deptree_fill('TABLE','SCOTT','TAB1')

SELECT nested_level,type,name
FROM   deptree
ORDER BY seq#;

SELECT * FROM ideptree
ORDER BY dependencies DESC;