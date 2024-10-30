-- Посчитать количество работающих складов на текущую дату по каждому городу. Вывести только те города, у которых количество складов более 80. Данные на выходе - город, количество складов.
-- Поля в результирующей таблице:
-- city
-- warehouse_count

SELECT city, COUNT(*) AS warehouse_count FROM Warehouses
WHERE date_close IS NULL
GROUP BY city 
HAVING COUNT(*)>80