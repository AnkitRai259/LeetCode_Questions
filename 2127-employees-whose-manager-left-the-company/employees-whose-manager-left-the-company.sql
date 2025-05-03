# Write your MySQL query statement below
with cte as ( select employee_id  
from Employees )

Select employee_id 
from Employees e 
where salary<30000 and manager_id not in ( select employee_id 
from cte)
order by employee_id ;