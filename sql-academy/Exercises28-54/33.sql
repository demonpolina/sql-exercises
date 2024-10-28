-- Найдите среднюю цену икры на основе данных, хранящихся в таблице Payments. В базе данных хранятся данные о покупках красной (red caviar) и черной икры (black caviar). В ответе должна быть одна строка со средней ценой всей купленной когда-либо икры.
-- Поля в результирующей таблице:
-- cost

SELECT AVG(unit_price) as cost FROM Payments
JOIN Goods on Payments.good=Goods.good_id
WHERE good_name LIKE '%caviar%'