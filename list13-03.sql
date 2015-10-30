ALTER SYSTEM SET plsql_code_type = 'NATIVE';

SHUTDOWN

STARTUP UPGRADE

@$ORACLE_HOME/rdbms/admin/dbmsupgnv.sql

COMMIT;

SHUTDOWN NORMAL

STARTUP

@$ORACLE_HOME/rdbms/admin/utlrp.sql