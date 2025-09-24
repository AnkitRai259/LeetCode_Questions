# Write your MySQL query statement below
SELECT customer_id, Count(*) as count_no_trans
from Visits v LEFT JOIN Transactions t on v.visit_id=t.visit_id
WHERE transaction_id is null
group by customer_id
;