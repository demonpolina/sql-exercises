-- Определить товары, которые покупали более 1 раза
-- Поля в результирующей таблице:
-- good_name

SELECT good_name FROM goods 
JOIN Payments ON Goods.good_id = Payments.good
GROUP BY good
HAVING COUNT(good)>1