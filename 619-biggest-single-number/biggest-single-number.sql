# Write your MySQL query statement below
WITH CTE AS (SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(*)=1
)
SELECT MAX(num) as num
FROM cte
