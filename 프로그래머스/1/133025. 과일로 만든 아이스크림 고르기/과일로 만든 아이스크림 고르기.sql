select h.FLAVOR
from ICECREAM_INFO i
inner join FIRST_HALF h on h.FLAVOR = i.FLAVOR
where h.TOTAL_ORDER > 3000 and i.INGREDIENT_TYPE like 'fruit%'
order by h.TOTAL_ORDER desc;