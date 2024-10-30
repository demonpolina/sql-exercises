-- Вывести количество бронирований по каждому месяцу каждого года, в которых было хотя бы 1 бронирование. Результат отсортируйте в порядке возрастания даты бронирования.
-- Поля в результирующей таблице:
-- year
-- month
-- amount

SELECT YEAR(start_date)  AS year, MONTH(start_date) AS month, COUNT(*) AS amount FROM Reservations
GROUP BY YEAR(start_date), MONTH(start_date)
ORDER BY year, month ASC 