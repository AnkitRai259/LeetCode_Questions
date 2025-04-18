# Write your MySQL query statement below
WITH cte AS (
    SELECT
        customer_id , order_date ,
        CASE 
            WHEN order_date = customer_pref_delivery_date THEN 'immediate'
            ELSE 'scheduled'
        END AS order_status
    FROM Delivery) ,
     cte2 as ( 
        select 
        customer_id ,order_status,
        row_number() over (partition by customer_id order by order_date) as row_num 
    from cte )
select round((count( case when order_status = 'immediate' then 1 end )* 100 /count(*)) ,2 )as immediate_percentage
from cte2
where row_num = '1';
