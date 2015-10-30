col schedule_name   format a15
col schedule_type   format a10
col repeat_interval format a30

SELECT schedule_name,
       schedule_type,
       repeat_interval,
       to_char(start_date,'YYYY/MM/DD (DAY)')
FROM user_scheduler_schedules
WHERE schedule_name = 'MON_SCHEDULE';