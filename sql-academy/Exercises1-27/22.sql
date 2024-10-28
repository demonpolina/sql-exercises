-- Найти имена всех матерей (mother)
-- Поля в результирующей таблице:
-- member_name

SELECT member_name FROM FamilyMembers
WHERE status = 'mother'