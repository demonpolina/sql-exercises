-- Выведите среднюю цену бронирования за сутки для каждой из комнат, которую бронировали хотя бы один раз. Среднюю цену необходимо округлить до целого значения вверх.
-- Поля в результирующей таблице:
-- room_id
-- avg_price

SELECT room_id, CEILING(AVG(price)) AS avg_price FROM Reservations
GROUP BY room_id