SELECT 
    COUNT(id) AS FISH_COUNT, 
    MONTH(TIME) AS MONTH
FROM 
    FISH_INFO
GROUP BY 
    MONTH(TIME)
ORDER BY 
    MONTH ASC;