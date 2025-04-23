# Write your MySQL query statement below
SELECT 
    n_id AS id,
    COUNT(*) AS num
FROM 
    (SELECT requester_id AS n_id FROM RequestAccepted
     UNION ALL
     SELECT accepter_id AS n_id FROM RequestAccepted) AS all_friends
GROUP BY 
    n_id
ORDER BY 
    num DESC
LIMIT 1;

