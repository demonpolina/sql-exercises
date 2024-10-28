-- Выведите имя самого старшего человека. Если таких несколько, то выведите их всех.
-- Поля в результирующей таблице:
-- member_name

SELECT member_name FROM FamilyMembers
WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) = (
SELECT 
    MAX(TIMESTAMPDIFF(YEAR, birthday,NOW()))
    FROM FamilyMembers);