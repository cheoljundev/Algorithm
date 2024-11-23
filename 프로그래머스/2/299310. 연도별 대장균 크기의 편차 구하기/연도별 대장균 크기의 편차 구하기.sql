SELECT 
    YEAR(DIFFERENTIATION_DATE) AS YEAR,
    (max_size_by_year - SIZE_OF_COLONY) AS YEAR_DEV,
    ID
FROM 
    ECOLI_DATA,
    (
        SELECT 
            YEAR(DIFFERENTIATION_DATE) AS year,
            MAX(SIZE_OF_COLONY) AS max_size_by_year
        FROM 
            ECOLI_DATA
        GROUP BY 
            YEAR(DIFFERENTIATION_DATE)
    ) AS yearly_max
WHERE 
    YEAR(DIFFERENTIATION_DATE) = yearly_max.year
ORDER BY 
    YEAR,
    YEAR_DEV;
