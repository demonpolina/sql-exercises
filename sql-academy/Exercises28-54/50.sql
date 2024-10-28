-- Какой процент обучающихся родился в 2000 году? Результат округлить до целого в меньшую сторону.
-- Поля в результирующей таблице:
-- percent

SELECT FLOOR(100*COUNT(id)/(
    SELECT COUNT(id) FROM Student
)) as percent FROM Student
WHERE YEAR(birthday) = '2000'