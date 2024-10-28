-- Задание: 10 (Serge I: 2002-09-23)
-- Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

SELECT model, price price FROM Printer
where price = (SELECT MAX(price) AS price FROM Printer)
