-- Задание: 28 (Serge I: 2012-05-04)
-- Используя таблицу Product, определить количество производителей, выпускающих по одной модели.

SELECT COUNT(maker) AS count FROM Product
WHERE maker in (SELECT maker FROM Product
GROUP BY maker 
HAVING COUNT(model)=1)