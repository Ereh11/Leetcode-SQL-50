SELECT machine_id, 
ROUND(  AVG(
          CASE WHEN activity_type = 'start' THEN -1 * timestamp
          ELSE timestamp END
          ) * 2,  3) AS processing_time

FROM Activity
GROUP BY machine_id;
