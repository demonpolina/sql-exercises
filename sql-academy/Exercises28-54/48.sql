-- Выведите заполненность классов в порядке убывания
-- Поля в результирующей таблице:
-- name
-- count

SELECT Class.name, COUNT(student) AS count FROM Student_in_class
JOIN Class ON Student_in_class.class = Class.id
GROUP BY class 
ORDER BY count DESC 