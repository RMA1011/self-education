select member_name, (unit_price*amount) as costs
from Payments join FamilyMembers
on Payments.family_member = FamilyMembers.member_id
where date like '%2005-06%'