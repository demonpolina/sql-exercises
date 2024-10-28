-- Выведите дату и время прилёта пассажира Стив Мартин (Steve Martin) в Лондон (London)
-- Поля в результирующей таблице:
-- time_in

SELECT t.time_in AS time_in FROM Trip AS t
JOIN Pass_in_trip AS pt ON t.id = pt.trip
JOIN Passenger AS p ON pt.passenger=p.id
WHERE p.name='Steve Martin' AND t.town_to='London'