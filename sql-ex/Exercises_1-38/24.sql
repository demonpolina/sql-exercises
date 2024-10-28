-- Задание: 24 (Serge I: 2003-02-03)
-- Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.

WITH all_model AS (
select model, price from pc 
	union
	select model, price from Laptop 
	union
	select model, price from Printer )
SELECT model FROM all_model
WHERE price = (SELECT MAX(price) FROM all_model)
