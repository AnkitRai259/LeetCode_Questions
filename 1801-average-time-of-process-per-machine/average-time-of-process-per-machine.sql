# Write your MySQL query statement below
With cte as (
    SELECT machine_id, process_id, 
    MAX(CASE WHEN activity_type = "start" then timestamp end )as Start, 
    MAX(CASE WHEN activity_type = 'end' then timestamp end ) as endl
    from Activity
    Group by process_id, machine_id) 

SELECT machine_id, ROUND(AVG(endl-Start),3) as processing_time
from cte
group by machine_id