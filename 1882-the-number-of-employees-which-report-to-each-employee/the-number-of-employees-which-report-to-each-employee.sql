# Write your MySQL query statement below
SELECT e1.employee_id,E1.name, Count(e2.reports_to) as reports_count, ROUND(AVG(e2.age),0) as average_age
FROM Employees e1 join Employees e2 on e1.employee_id=e2.reports_to
GROUP BY e1.employee_id, e1.name
ORDER BY e1.employee_id asc , reports_count desc;