-- Задание: 21 (Serge I: 2003-02-13)
-- Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
-- Вывести: maker, максимальная цена.

SELECT maker, MAX(PC.price) FROM Product
JOIN PC ON PC.model=Product.model
WHERE type='PC' 
GROUP BY maker
