
With cte as (
     Select count(user_id) 
     from Users u)

Select r.contest_id, Round((count(r.user_id)/(select * from cte) *100),2) as percentage
from Register r join Users u on r.user_id=u.user_id
Group by r.contest_id
order by  percentage desc,r.contest_id asc;


