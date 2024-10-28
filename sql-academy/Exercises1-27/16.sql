-- Вывести отсортированный по количеству перелетов (по убыванию) и имени (по возрастанию) список пассажиров, совершивших хотя бы 1 полет.
-- Поля в результирующей таблице:
-- name, count

SELECT name,
       COUNT(name) AS count
FROM passenger ps
         JOIN Pass_in_trip pt ON ps.id = pt.passenger
         JOIN trip tr ON pt.trip = tr.id
GROUP BY name
ORDER BY count DESC,
         name ASC;