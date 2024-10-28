-- Выведите информацию об обучающихся живущих на улице Пушкина (ul. Pushkina)?
-- Поля в результирующей таблице:
-- *

SELECT * FROM Student
WHERE address LIKE 'ul. Pushkina%'
