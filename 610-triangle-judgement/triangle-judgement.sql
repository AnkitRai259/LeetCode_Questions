# Write your MySQL query statement below
Select x,y,z,
case 
  when x+y>Greatest(x,y,z)and y+z>Greatest(x,y,z) and z+x>greatest(x,y,z) and x>0 and y> 0 and z>0 then "Yes"
  else "No"
end as triangle
from Triangle;