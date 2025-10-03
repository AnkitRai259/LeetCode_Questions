# Write your MySQL query statement below
With stat as (
SELECT customer_id,CASE WHEN order_date=customer_pref_delivery_date then "immediate" else "scheduled" end as status,ROW_NUMBER() OVER (PARTITION BY customer_id order by order_date) as rnk
FROM Delivery
)
Select ROUND(SUM(CASE WHEN status = "immediate" then 1 else 0 end )*100/count(*),2) as immediate_percentage
FROM stat
WHERE rnk =1; 