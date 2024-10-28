-- Какие компании организуют перелеты из Владивостока (Vladivostok)?
-- Поля в результирующей таблице:
-- name

SELECT Company.name AS name FROM Trip
JOIN Company on Trip.company = Company.id
WHERE Trip.town_from='Vladivostok'