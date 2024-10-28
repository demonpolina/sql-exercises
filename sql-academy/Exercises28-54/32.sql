-- Вывести средний возраст людей (в годах), хранящихся в базе данных. Результат округлите до целого в меньшую сторону.
-- Поля в результирующей таблице:
-- age

SELECT FLOOR(AVG(TIMESTAMPDIFF(YEAR, birthday,NOW()))) AS age FROM FamilyMembers