-- Найдите самый дорогой деликатес (delicacies) и выведите его цену
-- Поля в результирующей таблице:
-- good_name
-- unit_price

SELECT good_name, unit_price 
FROM Payments
  JOIN Goods ON Goods.good_id  = Payments.good
  JOIN GoodTypes ON GoodTypes.good_type_id  = Goods.type 
WHERE GoodTypes.good_type_name = "delicacies"
ORDER BY unit_price DESC 
LIMIT 1