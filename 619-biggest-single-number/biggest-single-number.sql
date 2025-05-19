# Write your MySQL query statement below
Select MAX(num) as num
from MyNumbers
Where num in ( Select num
from MyNumbers
Group by num
having count(*)=1);
