-- Напишите запрос, который выведет имена пилотов, которые в качестве второго пилота (second_pilot_id) в августе 2023 года летали в New York
-- Поля в результирующей таблице:
-- name

SELECT  name FROM Pilots
WHERE pilot_id IN (SELECT second_pilot_id FROM Flights
WHERE flight_date LIKE '2023-08%' AND destination = 'New York')