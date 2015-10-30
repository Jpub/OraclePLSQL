SELECT runid,
  to_char(run_date,'YYYY-MM-DD HH24:MI:SS') day,
    run_comment
FROM plsql_profiler_runs
ORDER BY runid;

SELECT p.unit_name, p.occured, p.tot_time, p.line# line,
                                 substr(s.text, 1,75) text
  FROM
  (SELECT u.unit_name, d.total_occur occured,
  (d.TOTAL_TIME/1000000000) tot_time, d.line#
  FROM plsql_profiler_units u, plsql_profiler_data d
  WHERE d.RUNID=u.runid
  AND d.UNIT_NUMBER = u.unit_number
  AND d.total_occur >0
  AND u.runid = &runid) p, user_source s
  WHERE p.unit_name = s.name(+) and p.line# = s.line (+)
  ORDER BY p.unit_name, p.line#;