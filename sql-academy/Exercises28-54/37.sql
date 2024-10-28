-- Сколько лет самому молодому обучающемуся ?
-- Поля в результирующей таблице:
-- year

SELECT MIN(TIMESTAMPDIFF(YEAR, birthday, NOW())) AS year FROM Student