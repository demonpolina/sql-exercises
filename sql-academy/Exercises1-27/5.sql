-- Вывести количество рейсов, совершенных на TU-134
-- Поля в результирующей таблице:
-- count

SELECT COUNT(plane) as COUNT FROM Trip
WHERE plane='TU-134'