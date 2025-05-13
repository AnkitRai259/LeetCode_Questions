# Write your MySQL query statement below
Select P.product_id, Round(Coalesce(SUM(P.price * U.units) / Nullif(SUM(U.units),0),0),2) AS average_price
from Prices P left join UnitsSold U on P.product_id=U.product_id and U.purchase_date between P.start_date and P.end_date
Group by P.product_id;