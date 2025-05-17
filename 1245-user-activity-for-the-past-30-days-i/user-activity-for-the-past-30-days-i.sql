# Write your MySQL query statement below
Select activity_date as day, count(Distinct user_id ) as active_users
From Activity
where activity_date>date_sub("2019-07-27", interval 30 DAY) and activity_date<="2019-07-27"
Group by day;