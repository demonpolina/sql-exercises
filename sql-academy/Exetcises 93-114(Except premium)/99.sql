-- Посчитай доход с женской аудитории (доход = сумма(price * items)). Обратите внимание, что в таблице женская аудитория имеет поле user_gender «female» или «f».
-- Поля в результирующей таблице:
-- income_from_female

SELECT SUM(price*items) AS income_from_female FROM Purchases
WHERE user_gender IN ('female', 'f')
