# Write your MySQL query statement below
with cte as (Select query_name, avg(rating/position) as quality
from Queries
group by query_name),
 cte2 as (Select query_name , SUM(CASE WHEN rating<3 THEN 1 ELSE 0 END)*100.0/ COUNT(*) as poor_query
from Queries
group by query_name) 
select cte.query_name, round(quality,2) as quality , round(poor_query,2) as poor_query_percentage
from cte join cte2 on cte.query_name = cte2.query_name
group by query_name;