-- Задание: 14 (Serge I: 2002-11-05)
-- Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

SELECT Ships.class, Ships.name, classes.country FROM Ships
JOIN classes ON classes.class = ships.class
WHERE numGuns>=10
