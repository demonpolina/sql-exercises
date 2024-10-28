-- Задание: 7 (Serge I: 2002-11-02)
-- Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

SELECT PC.model, price FROM PC
JOIN Product on PC.model=Product.model
WHERE Product.maker='B'
UNION
SELECT Laptop.model, price FROM Laptop
JOIN Product on Laptop.model=Product.model
WHERE Product.maker='B'
UNION
SELECT Printer.model, price FROM Printer
JOIN Product on Printer.model=Product.model
WHERE Product.maker='B'
