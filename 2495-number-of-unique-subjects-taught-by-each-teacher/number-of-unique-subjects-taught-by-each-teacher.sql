# Write your MySQL query statement below
Select teacher_id,count(distinct(subject_id)) as cnt
from Teacher
Group by teacher_id;
