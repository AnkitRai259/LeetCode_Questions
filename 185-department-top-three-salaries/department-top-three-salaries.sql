# Write your MySQL query statement below
with cte as (Select d.name as department , e.name as Employee , Salary ,dense_rank() over (partition by d.name order by Salary desc) as rnk
from Department d join Employee e on d.id=e.departmentId
group by department, Employee
Order by Salary desc)
select department as Department , Employee, Salary
from cte 
where rnk<4
order by Employee;
