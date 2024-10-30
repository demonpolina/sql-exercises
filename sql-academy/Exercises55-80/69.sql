-- Вывести идентификаторы всех владельцев комнат, что размещены на сервисе бронирования жилья и сумму, которую они заработали
-- Поля в результирующей таблице:
-- owner_id
-- total_earn

SELECT owner_id, IFNULL(SUM(total), 0) AS total_earn FROM Rooms rm
LEFT JOIN Reservations rs ON rm.id = rs.room_id
GROUP BY owner_id;