-- В предположении, что приход и расход денег на каждом пункте приема фиксируется произвольное 
-- число раз (первичным ключом в таблицах является столбец code), 
-- требуется получить таблицу, в которой каждому пункту за каждую дату выполнения операций будет соответствовать одна строка.
-- Вывод: point, date, суммарный расход пункта за день (out), суммарный приход пункта за день (inc).
-- Отсутствующие значения считать неопределенными (NULL).

SELECT point, date, SUM(sumOut), SUM(sumInc) FROM (
    SELECT point, date, SUM(inc) as sumInc, null as sumOut FROM Income 
    GROUP BY point, date 
UNION 
SELECT point, date, null as sumInc, SUM(out) as sumOut FROM Outcome
 GROUP BY point, date ) as X
GROUP BY point, date 
ORDER BY point
