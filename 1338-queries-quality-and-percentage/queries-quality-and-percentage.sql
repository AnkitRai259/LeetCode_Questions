# Write your MySQL query statement below
With q1 as
(SELECT query_name, ROUND(AVG(rating/position),2) as quality
from Queries
GROUP BY query_name)
, q2 as ( SELECT query_name, ROUND(AVG(CASE WHEN rating <3 then 1 else 0 end)*100,2) as poor_query_percentage
FROM queries
group by query_name)
SELECT q1.query_name, quality, poor_query_percentage
FROM q1 join q2 on q1.query_name=q2.query_name