-- Сколько обучающихся в 10 B классе ?
-- Поля в результирующей таблице:
-- count

SELECT COUNT(student) AS count FROM Student_in_class
JOIN Class ON Student_in_class.class = Class.id
WHERE name = '10 B'