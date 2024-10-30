-- Вывести имена покупателей, каждый из которых приобрёл Laptop и Monitor (использовать наименование товара product.name) в марте 2024 года?
-- Поля в результирующей таблице:
-- name

SELECT Customer.name
FROM Customer
	JOIN Purchase ON Customer.customer_key = Purchase.customer_key
	JOIN Product ON Purchase.product_key = Product.product_key
WHERE Product.name IN ('Laptop', 'Monitor')
	AND MONTH(Purchase.date) = 3
	AND YEAR(Purchase.date) = 2024
GROUP BY Customer.customer_key
HAVING COUNT(DISTINCT Product.name) = 2