with total_delicacies AS
(select good_name, good_id, unit_price, type
from Payments join Goods
on Payments.good = Goods.good_id
where type = (select good_type_id from GoodTypes where good_type_name = 'delicacies'))
select good_name, unit_price
from total_delicacies
where unit_price = (select max(unit_price) from total_delicacies)