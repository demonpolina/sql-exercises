-- Задание: 13 (Serge I: 2002-11-02)
-- Найдите среднюю скорость ПК, выпущенных производителем A.

SELECT AVG(PC.speed) as avg_speed
FROM PC
JOIN Product
ON PC.model = Product.model
WHERE Product.maker = 'A'
