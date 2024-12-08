select 
    g1.SCORE,
    g1.EMP_NO,
    e.EMP_NAME,
    e.POSITION,
    e.EMAIL
from (
    select emp_no, sum(score) as score from HR_GRADE
    where YEAR = 2022
    group by emp_no
) g1
inner join HR_EMPLOYEES e on e.emp_no = g1.emp_no
where g1.SCORE = (
        select max(score)
        from (
        select emp_no, sum(score) as score from HR_GRADE
        where YEAR = 2022
        group by emp_no
    ) g2
)