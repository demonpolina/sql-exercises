-- Определить, какие товары не покупались в 2005 году
-- Поля в результирующей таблице:
-- good_name

SELECT good_name FROM Goods AS g
WHERE g.good_id NOT IN (
    SELECT good FROM Payments AS p
    WHERE YEAR(p.date) = 2005
)