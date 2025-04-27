# Write your MySQL query statement below
select u.user_id, concat(upper(substring(name,1,1)),lower(substring(name,2))) as name
from Users u
order by u.user_id;