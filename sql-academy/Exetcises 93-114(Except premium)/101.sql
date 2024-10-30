-- Выведи для каждого пользователя первое наименование, которое он заказал (первое по времени транзакции).
-- Поля в результирующей таблице:
-- user_id
-- item

SELECT user_id, item FROM (
    SELECT user_id, item, ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY transaction_ts ASC) as rn
    FROM Transactions
) AS ge WHERE rn = 1;