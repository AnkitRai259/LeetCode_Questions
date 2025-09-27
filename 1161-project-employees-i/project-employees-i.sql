# Write your MySQL query statement below
SELECT project_id, ROUND(AVG(experience_years),2) as average_years
FROM Project p join Employee e on p.employee_id=e.employee_id
group by project_id
