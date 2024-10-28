-- Вывести имена людей, у которых есть полный тёзка среди пассажиров
-- Поля в результирующей таблице:
-- name

SELECT name
FROM passenger
GROUP BY name
HAVING COUNT(*) > 1;