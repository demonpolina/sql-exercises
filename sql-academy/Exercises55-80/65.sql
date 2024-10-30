-- Необходимо вывести рейтинг для комнат, которые хоть раз арендовали, как среднее значение рейтинга отзывов округленное до целого вниз.
-- Поля в результирующей таблице:
-- room_id
-- rating

SELECT room_id, FLOOR(AVG(Reviews.rating)) AS rating FROM Reservations
JOIN Reviews ON Reservations.id = Reviews.reservation_id
GROUP BY room_id