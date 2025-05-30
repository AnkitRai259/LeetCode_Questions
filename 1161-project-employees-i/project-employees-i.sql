# Write your MySQL query statement below
SELECT p.project_id, Round(sum(e.experience_years)/count(p.employee_id),2) as average_years
from Project p join Employee e on p.employee_id=e.employee_id
group by p.project_id;