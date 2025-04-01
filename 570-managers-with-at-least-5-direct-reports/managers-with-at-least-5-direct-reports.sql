# Write your MySQL query statement below
SELECT name
from Employee
where id in ( Select managerId
               from Employee
               group by managerId
              having count(*)>=5);

           