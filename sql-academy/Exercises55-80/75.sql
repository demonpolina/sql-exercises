-- Выведите фамилию, имя и дату рождения студентов, кто был рожден в мае.
-- Поля в результирующей таблице:
-- last_name
-- first_name
-- birthday

SELECT  last_name, first_name, birthday FROM Student
WHERE MONTH(birthday)=5 