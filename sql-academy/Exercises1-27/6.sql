-- Какие компании совершали перелеты на Boeing
-- Поля в результирующей таблице:
-- name

SELECT DISTINCT Company.name AS name FROM Trip
JOIN Company on Company.id=Trip.company
WHERE plane='Boeing'
