INSERT INTO test_tab VALUES (100);

SELECT TO_CHAR(time,'YYYY/MM/DD HH24:MI:SS')AS time,
username,
error_num
FROM log_table;