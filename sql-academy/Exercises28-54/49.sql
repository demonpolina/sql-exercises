-- Какой процент обучающихся учится в "10 A" классе? Выведите ответ в диапазоне от 0 до 100 с округлением до четырёх знаков после запятой, например, 96.0201.
-- Поля в результирующей таблице:
-- percent

SELECT ROUND(100 * COUNT(student)/(
    SELECT COUNT(student) FROM Student_in_class
), 4) AS percent FROM Student_in_class
JOIN Class ON Student_in_class.class = Class.id
WHERE name = '10 A'