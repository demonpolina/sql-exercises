-- Найдите максимальный возраст (количество лет) среди обучающихся 10 классов на сегодняшний день. Для получения текущих даты и времени используйте функцию NOW().
-- Поля в результирующей таблице:
-- max_year

SELECT MAX(TIMESTAMPDIFF(YEAR, birthday, NOW())) AS max_year FROM Student s
JOIN Student_in_class AS sic ON s.id = sic.student
JOIN Class AS c ON sic.class = c.id
WHERE c.name LIKE '10%'