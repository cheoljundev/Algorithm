SELECT count(i.id) as FISH_COUNT, n.FISH_NAME FROM FISH_INFO i
inner join FISH_NAME_INFO n on n.FISH_TYPE = i.FISH_TYPE
group by n.FISH_NAME
order by FISH_COUNT desc