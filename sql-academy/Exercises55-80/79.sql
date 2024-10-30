-- Выведите поля id, home_type, price у всего жилья из таблицы Rooms. Если комната имеет телевизор и интернет одновременно, то в качестве цены в поле price выведите цену, применив скидку 10%.
-- Поля в результирующей таблице:
-- id
-- home_type
-- price

SELECT id, home_type, 
    IF(has_tv = true AND has_internet = true, price*0.9, price) AS price
FROM Rooms