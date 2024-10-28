-- адание: 19 (Serge I: 2003-02-13)
-- Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
-- Вывести: maker, средний размер экрана.

SELECT Product.maker, AVG(Laptop.Screen) FROM Product, Laptop
WHERE Product.model=Laptop.model 
GROUP BY maker
