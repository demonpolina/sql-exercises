-- Сколько Анн (Anna) учится в школе ?
-- Поля в результирующей таблице:
-- count

SELECT COUNT(DISTINCT id) AS count FROM Student
WHERE first_name = 'Anna'