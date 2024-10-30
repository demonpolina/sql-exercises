-- Создайте представление с именем "People", которое будет содержать список имен (first_name) и фамилий (last_name) всех студентов (Student) и преподавателей(Teacher)

CREATE VIEW People AS 
SELECT first_name, last_name FROM Student
UNION 
SELECT first_name, last_name FROM Teacher