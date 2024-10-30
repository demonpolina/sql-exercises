-- Выведите отсортированный список (по возрастанию) фамилий и имен студентов в виде Фамилия.И.
-- Поля в результирующей таблице:
-- name

SELECT CONCAT(last_name,'.',LEFT(first_name,1),'.') as name FROM Student
ORDER BY name ASC