col job_name      format a15
col schedule_name format a15
col job_action    format a15

BEGIN
  DBMS_SCHEDULER.CREATE_JOB(job_name => 'PRO_SCHE_JOB',
                            schedule_name => 'MON_SCHEDULE',
                            job_type => 'STORED_PROCEDURE',
                            job_action => 'JOB_TEST',
                            enabled => TRUE);
END;
/

SELECT job_name,
       schedule_name,
       job_action,
       to_char(start_date,'YYYY/MM/DD (DAY)')
FROM user_scheduler_jobs
WHERE job_name = 'PRO_SCHE_JOB';