# Write your MySQL query statement below
Select  e.employee_id,e.name,count(e2.reports_to) as reports_count,round(avg(e2.age)) as average_age
from Employees e inner join Employees e2 on e.employee_id=e2.reports_to
group by e.employee_id, e.name
Order by e.employee_id asc , reports_count desc; 