# root 아이템을 찾아야 함
# item_id, item_name 출력
# item_id로 오름차순

select i.item_id, i.item_name from ITEM_INFO i
inner join ITEM_TREE t on t.item_id = i.item_id
where t.PARENT_ITEM_ID is null
order by i.item_id