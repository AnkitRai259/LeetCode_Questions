# Write your MySQL query statement below
WITH cte AS (
    SELECT account_id,
           CASE 
               WHEN income < 20000 THEN 'Low Salary'
               WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
               ELSE 'High Salary' 
           END AS category
    FROM Accounts
),
categories AS (
    SELECT 'Low Salary' AS category
    UNION
    SELECT 'Average Salary'
    UNION
    SELECT 'High Salary'
)
SELECT categories.category,COUNT(cte.account_id) AS accounts_count
FROM categories LEFT JOIN cte ON categories.category = cte.category
GROUP BY categories.category
ORDER BY accounts_count DESC;

