-- Выведите идентификаторы всех рейсов и количество пассажиров на них. Обратите внимание, что на каких-то рейсах пассажиров может не быть. В этом случае выведите число "0".
-- Поля в результирующей таблице:
-- id
-- count

SELECT Trip.id, IFNULL(COUNT(Pass_in_trip.passenger), 0) as count FROM Trip
LEFT JOIN Pass_in_trip ON Trip.id=Pass_in_trip.trip
GROUP BY Trip.id
