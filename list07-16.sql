SELECT argument_name,data_type,in_out,position
FROM  USER_ARGUMENTS
WHERE object_name = 'TRIANGLE'
ORDER BY 4;