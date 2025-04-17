# Write your MySQL query statement below

SELECT  DATE_FORMAT(trans_date, '%Y-%m') AS month, country, count(trans_date) as trans_count,
sum(state='approved') as approved_count,sum(amount) as trans_total_amount, sum((state='approved')*amount) as approved_total_amount
FROM Transactions 
group by month,country;

