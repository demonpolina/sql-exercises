-- Выведите фамилии преподавателей, которые ведут физическую культуру (Physical Culture). Отсортируйте преподавателей по фамилии в алфавитном порядке.
-- Поля в результирующей таблице:
-- last_name

SELECT  last_name FROM Teacher
JOIN Schedule ON Teacher.id = Schedule.teacher
JOIN Subject ON Schedule.subject = Subject.id
WHERE Subject.name = 'Physical Culture'
ORDER BY last_name ASC