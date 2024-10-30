-- Выведите идентификаторы преподавателей, которые хотя бы один раз за всё время преподавали в каждом из одиннадцатых классов.
-- Поля в результирующей таблице:
-- teacher

SELECT teacher
FROM Schedule sc
         JOIN Class cl ON sc.class = cl.id
WHERE name LIKE '11 %'
GROUP BY teacher
HAVING COUNT(DISTINCT name) = (
    SELECT COUNT(*) FROM Class
    WHERE name LIKE '11%');