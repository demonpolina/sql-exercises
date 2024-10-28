-- Выведите пассажиров с самым длинным ФИО. Пробелы, дефисы и точки считаются частью имени.
-- Поля в результирующей таблице:
-- name

SELECT name FROM Passenger
WHERE LENGTH(name)=(
    SELECT MAX(LENGTH(name)) FROM Passenger)