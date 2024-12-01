select YEAR(YM) as "year",
round(avg(PM_VAL1), 2) as "pm10",
round(avg(PM_VAL2), 2) as "pm2.5"
from AIR_POLLUTION
where LOCATION2 = '수원'
group by year
order by year