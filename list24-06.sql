BEGIN
  DBMS_SCHEDULER.CREATE_JOB(
            job_name => 'PRO_JOB', job_type => 'STORED_PROCEDURE',
            job_action => 'JOB_TEST', start_date => SYSDATE,
            repeat_interval => 'SYSDATE+1/1440', enabled => TRUE);
END;
/