# Write your MySQL query statement below
with cte as (Select Turn ,person_id as ID , person_name as Name , weight, sum(weight)over (order by Turn) as Total_Weight
from Queue
order by Turn asc)
select Name as person_name
from ( select Name , Total_Weight
        from cte 
        where Total_Weight <= 1000
        order by turn desc
        limit 1) as weight_table ;