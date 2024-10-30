-- Выведите id тех комнат, которые арендовали нечетное количество раз
-- Поля в результирующей таблице:
-- room_id
-- count

SELECT room_id, COUNT(*) AS count FROM Reservations
GROUP BY room_id
HAVING MOD(COUNT(*),2)=1 