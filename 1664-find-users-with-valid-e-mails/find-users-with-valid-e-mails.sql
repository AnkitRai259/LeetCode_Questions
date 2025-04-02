# Write your MySQL query statement below
Select user_id, name, mail
from Users
where mail regexp '^[A-Za-z][A-Za-z0-9.\_\-]*@leetcode(\\?com)?\\.com$';