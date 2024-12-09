# 희귀도가 레어인 부모를 찾고, 그 자식의 정보를 출력해야 함.
# -> '희귀도가 레어인 부모의 id를 parent_item_id로 가진 아이템'

SELECT 
    t.ITEM_ID, 
    ITEM_NAME, 
    RARITY 
FROM 
    ITEM_INFO i
INNER JOIN 
    ITEM_TREE t 
ON 
    t.item_id = i.item_id
WHERE 
    t.PARENT_ITEM_ID IN (
        SELECT 
            item_id 
        FROM 
            ITEM_INFO
        WHERE 
            RARITY = 'RARE'
    )
ORDER BY 
    t.ITEM_ID DESC;




