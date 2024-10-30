-- Вывести список комнат со всеми удобствами (наличие ТВ, интернета, кухни и кондиционера), а также общее количество дней и сумму за все дни аренды каждой из таких комнат.
-- Поля в результирующей таблице:
-- home_type
-- address
-- days
-- total_fee

SELECT home_type, address,  IFNULL(SUM(DATEDIFF(end_date, start_date)),0) AS days, IFNULL(SUM(total), 0) AS total_fee FROM Rooms
LEFT JOIN Reservations ON Rooms.id = Reservations.room_id
WHERE has_air_con = true AND  has_internet = true AND has_kitchen = true AND has_tv = true 
GROUP BY home_type, address