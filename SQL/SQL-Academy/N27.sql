with total_sales_2005 AS
(select good, amount*unit_price as costs, type
from Payments join Goods
on Payments.good = Goods.good_id
where date like '%2005-%')
select good_type_name, SUM(costs) as costs
from total_sales_2005 join GoodTypes
on total_sales_2005.type = GoodTypes.good_type_id 
group by good_type_name 