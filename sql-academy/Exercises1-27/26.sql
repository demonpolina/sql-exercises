-- Определить группы товаров, которые не приобретались в 2005 году
-- Поля в результирующей таблице:
-- good_type_name

SELECT good_type_name FROM GoodTypes
WHERE good_type_name NOT IN (
    SELECT DISTINCT gt.good_type_name FROM Payments as p
    JOIN Goods AS g ON p.good = g.good_id
    JOIN GoodTypes AS gt ON g.type = gt.good_type_id
    WHERE YEAR(p.date) = 2005)