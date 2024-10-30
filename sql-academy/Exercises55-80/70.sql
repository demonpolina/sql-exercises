-- Необходимо категоризовать жилье на economy, comfort, premium по цене соответственно <= 100, 100 < цена < 200, >= 200. В качестве результата вывести таблицу с названием категории и количеством жилья, попадающего в данную категорию
-- Поля в результирующей таблице:
-- category
-- count

SELECT CASE 
    WHEN price<=100 THEN 'economy'
    WHEN price>100 AND price<200 THEN 'comfort'
    WHEN price>=200 THEN 'premium'
    END AS category, COUNT(*) AS count 
FROM Rooms
GROUP BY category