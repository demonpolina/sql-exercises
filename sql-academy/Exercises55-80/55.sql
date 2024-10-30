-- Удалить компании, совершившие наименьшее количество рейсов.

DELETE FROM Company
WHERE id IN (
    SELECT company FROM Trip
    GROUP BY company
    HAVING COUNT(*) = (
                SELECT COUNT(*) AS count
        FROM trip
        GROUP BY company
        ORDER BY count
        LIMIT 1))