-- Сколько времени обучающийся будет находиться в школе, учась со 2-го по 4-ый уч. предмет?
-- Поля в результирующей таблице:
-- time

SELECT TIMEDIFF(MAX(end_pair), MIN(start_pair)) AS time FROM Timepair
WHERE id BETWEEN '2' AND '4'