-- В каких классах введет занятия преподаватель "Krauze" ?
-- Поля в результирующей таблице:
-- name

SELECT DISTINCT name FROM Class
JOIN Schedule on Class.id=Schedule.class
JOIN Teacher ON Schedule.teacher = Teacher.id
WHERE last_name='Krauze'