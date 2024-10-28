-- Определить, кто из членов семьи покупал картошку (potato)
-- Поля в результирующей таблице:
-- status

SELECT DISTINCT status FROM FamilyMembers fm
JOIN Payments p ON fm.member_id=p.family_member
JOIN Goods g on p.good=g.good_id
WHERE g.good_name='potato'

