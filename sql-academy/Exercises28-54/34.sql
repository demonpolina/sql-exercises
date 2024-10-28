-- Сколько всего 10-ых классов
-- Поля в результирующей таблице:
-- count

SELECT count(id) AS count FROM Class
WHERE name LIKE '10%'