select good_type_name
from GoodTypes
where good_type_id not in 
(select type from
Payments join Goods
on Payments.good = Goods.good_id
where date like '%2005-%')