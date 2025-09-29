SELECT contest_id, ROUND(Count(r.user_id)*100/(SELECT COUNT(u.user_id) from Users u),2) as percentage
FROM Register r 
group by contest_id
order by percentage desc, contest_id



