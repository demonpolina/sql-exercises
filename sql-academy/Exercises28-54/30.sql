-- Выведите нагруженность (число пассажиров) каждого рейса (trip). Результат вывести в отсортированном виде по убыванию нагруженности.
-- Поля в результирующей таблице:
-- trip
-- count

SELECT trip, COUNT(passenger) as count FROM Pass_in_trip
GROUP BY trip
ORDER BY count DESC