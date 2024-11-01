select count(*) as fish_count from FISH_INFO
where ifnull(length, 10) <= 10