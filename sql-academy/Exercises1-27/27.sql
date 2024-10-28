-- Узнайте, сколько было потрачено на каждую из групп товаров в 2005 году. Выведите название группы и потраченную на неё сумму. Если потраченная сумма равна нулю, т.е. товары из этой группы не покупались в 2005 году, то не выводите её.
-- Поля в результирующей таблице:
-- good_type_name
-- costs

SELECT gt.good_type_name, SUM(p.amount * p.unit_price) as costs FROM Payments AS p
JOIN Goods AS g ON p.good = g.good_id
JOIN GoodTypes AS gt ON g.type = gt.good_type_id
WHERE YEAR(p.date) = 2005
GROUP BY gt.good_type_id