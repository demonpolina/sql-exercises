-- Выведите всех пользователей с электронной почтой в «hotmail.com»
-- Поля в результирующей таблице:
-- *

SELECT * FROM Users
WHERE email LIKE '%@hotmail.com'