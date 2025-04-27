# Write your MySQL query statement below
with cte as ( select min(id) as id , email 
              from Person
              group by email)

Delete from Person 
where id not in (select id from cte) ;              