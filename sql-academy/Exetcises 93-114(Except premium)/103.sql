-- Вывести список имён сотрудников, получающих большую заработную плату, чем у непосредственного руководителя.
-- Поля в результирующей таблице:
-- name

SELECT a.name FROM employee a, employee b
WHERE  b.id = a.chief_id  AND  a.salary > b.salary