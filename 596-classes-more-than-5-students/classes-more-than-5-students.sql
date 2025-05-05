# Write your MySQL query statement below
Select class
from Courses 
Group by class
having count(distinct student)>=5;