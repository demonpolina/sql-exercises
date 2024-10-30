-- Для каждой комнаты, которую снимали как минимум 1 раз, найдите имя человека, снимавшего ее последний раз, и дату, когда он выехал
-- Поля в результирующей таблице:
-- room_id
-- name
-- end_date

SELECT room.room_id, name, date AS end_date
FROM (SELECT room_id, MAX(end_date) AS date 
    FROM Reservations
    GROUP BY room_id ) AS room 
JOIN Reservations on room.room_id = Reservations.room_id AND room.date = Reservations.end_date
JOIN Users ON Reservations.user_id = Users.id