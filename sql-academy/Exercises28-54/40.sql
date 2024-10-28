-- Выведите название предметов, которые преподает Ромашкин П.П. (Romashkin P.P.). Обратите внимание, что в базе данных есть несколько учителей с такими фамилией и инициалами.
-- Поля в результирующей таблице:
-- subjects

SELECT DISTINCT name AS subjects FROM Subject
JOIN Schedule ON Subject.id = Schedule.subject
JOIN Teacher ON Schedule.teacher = Teacher.id
WHERE last_name = 'Romashkin' AND middle_name LIKE 'P%'AND first_name LIKE 'P%'