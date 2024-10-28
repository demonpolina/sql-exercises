-- Вывести все названия самолётов, на которых можно улететь в Москву (Moscow)
-- Поля в результирующей таблице:
-- plane

SELECT DISTINCT plane FROM Trip
WHERE town_to='Moscow'