-- Задание: 17 (Serge I: 2003-02-03)
-- Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
-- Вывести: type, model, speed

SELECT DISTINCT 'laptop', model, speed
FROM laptop
WHERE speed < ALL(SELECT speed FROM pc)
