-- Какие кабинеты чаще всего использовались для проведения занятий? Выведите те, которые использовались максимальное количество раз.
-- Поля в результирующей таблице:
-- classroom

SELECT classroom
FROM Schedule
GROUP BY classroom
HAVING count(classroom) = (
    SELECT COUNT(*) AS count
    FROM Schedule
    GROUP BY classroom
    ORDER BY count DESC
    LIMIT 1
);