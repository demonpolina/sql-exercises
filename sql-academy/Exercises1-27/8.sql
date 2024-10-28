-- В какие города можно улететь из Парижа (Paris) и сколько времени это займёт?
-- Поля в результирующей таблице:
-- town_to
-- flight_time

SELECT town_to, TIMEDIFF(time_in, time_out) as flight_time FROM Trip
WHERE town_from='Paris'