-- Найдите какой процент пользователей, зарегистрированных на сервисе бронирования, хоть раз арендовали или сдавали в аренду жилье. Результат округлите до сотых.
-- Поля в результирующей таблице:
-- percent

WITH act_users (user) AS (
    SELECT DISTINCT owner_id FROM Rooms 
    JOIN Reservations ON Rooms.id = Reservations.room_id
    UNION
    SELECT user_id FROM Reservations)
SELECT ROUND(100*COUNT(act_users.user)/COUNT(Users.id), 2) AS percent FROM act_users
RIGHT JOIN Users ON act_users.user = Users.id