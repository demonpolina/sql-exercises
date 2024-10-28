-- Сколько занятий провел Krauze 30 августа 2019 г.?
-- Поля в результирующей таблице:
-- count

SELECT COUNT(Schedule.id) AS count FROM Schedule
JOIN Teacher ON Schedule.teacher = Teacher.id
WHERE last_name = 'Krauze' AND date = '2019-08-30'