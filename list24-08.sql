BEGIN
  DBMS_SCHEDULER.CREATE_SCHEDULE(
                     schedule_name => 'MON_SCHEDULE',
                     start_date => SYSDATE,
                     repeat_interval => 'FREQ=WEEKLY; BYDAY=MON');
END;
/