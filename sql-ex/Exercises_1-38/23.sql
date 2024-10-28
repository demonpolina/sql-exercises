-- Задание: 23 (Serge I: 2003-02-14)
-- Найдите производителей, которые производили бы как ПК
-- со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
-- Вывести: Maker

SELECT maker FROM Product p
JOIN PC ON p.model = PC.model
WHERE PC.speed>=750 
INTERSECT
SELECT maker FROM Product p
JOIN Laptop l ON p.model = l.model
WHERE l.speed>=750
