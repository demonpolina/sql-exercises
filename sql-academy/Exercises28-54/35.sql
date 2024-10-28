-- Сколько различных кабинетов школы использовались 2 сентября 2019 года для проведения занятий?
-- Поля в результирующей таблице:
-- count

SELECT COUNT(DISTINCT classroom) as count FROM Schedule 
WHERE date = '2019-09-02'