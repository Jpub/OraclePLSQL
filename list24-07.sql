SELECT job_name,job_action,
       job_type,repeat_interval,
       to_char(last_start_date,'HH24:MI:SS'),
       to_char(next_run_date,'HH24:MI:SS')
FROM user_scheduler_jobs
WHERE job_name = 'PRO_JOB';

EXECUTE DBMS_SCHEDULER.DROP_JOB('PRO_JOB');