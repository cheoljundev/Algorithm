select
    b.TITLE,
    b.BOARD_ID,
    r.REPLY_ID,
    r.WRITER_ID,
    r.CONTENTS,
    DATE_FORMAT(r.CREATED_DATE, '%Y-%m-%d') as CREATED_DATE
from used_goods_board b
inner join used_goods_reply r on b.board_id = r.board_id
where b.created_date like '2022-10%'
order by r.created_date asc, b.title asc