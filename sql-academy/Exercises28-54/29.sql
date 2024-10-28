-- Выведите имена пассажиров улетевших в Москву (Moscow) на самолете TU-134
-- Поля в результирующей таблице:
-- name

SELECT DISTINCT name FROM Passenger P 
JOIN Pass_in_trip pit ON p.id=pit.passenger
JOIN Trip t ON pit.trip=t.id
WHERE t.plane='TU-134' AND t.town_to = 'Moscow'