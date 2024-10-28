-- Сколько рейсов совершили авиакомпании из Ростова (Rostov) в Москву (Moscow) ?
-- Поля в результирующей таблице:
-- count

SELECT COUNT(id) AS count FROM Trip
WHERE town_from = 'Rostov' and town_to = 'Moscow'