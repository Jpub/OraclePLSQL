col owner format A5
col name format A10
col type format A10

SELECT owner,name,type,sharable_mem,loads,kept
FROM  v$db_object_cache
WHERE type IN ('PROCEDURE')
  and KEPT = 'YES' 
ORDER BY loads DESC;
