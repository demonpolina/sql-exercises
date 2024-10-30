-- Какой средний возраст клиентов, купивших Smartwatch (использовать наименование товара product.name) в 2024 году?
-- Поля в результирующей таблице:
-- average_age

SELECT AVG(age) AS average_age FROM Customer
WHERE customer_key IN(
    SELECT customer_key FROM Purchase
    JOIN Product ON Purchase.product_key = Product.product_key
    WHERE name = 'Smartwatch' and YEAR(date)=2024)