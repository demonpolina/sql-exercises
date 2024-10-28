-- Задание: 25 (Serge I: 2003-02-14)
-- Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM. Вывести: Maker

SELECT DISTINCT maker FROM Product
WHERE model IN (
SELECT model FROM PC
WHERE ram = (SELECT MIN(ram) FROM PC) AND speed = (SELECT MAX(speed) FROM PC WHERE ram = (SELECT MIN(ram) FROM PC)))
AND maker IN (SELECT maker FROM Product WHERE type = 'printer')
