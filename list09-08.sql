col trigger_name format  a12
col table_name format  a10

SELECT trigger_name,trigger_type,table_name,status
                                  FROM user_triggers;