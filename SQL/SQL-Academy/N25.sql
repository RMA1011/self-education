select good_name from Goods
where good_id not in 
(select good from Payments
where date like '%2005-%')