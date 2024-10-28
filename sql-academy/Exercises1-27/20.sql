-- Сколько и кто из семьи потратил на развлечения (entertainment). Вывести статус в семье, имя, сумму
-- Поля в результирующей таблице:
-- status
-- member_name
-- costs

SELECT status, member_name, SUM(amount*unit_price) as costs FROM FamilyMembers fm
JOIN Payments p ON fm.member_id = p.family_member
JOIN Goods g ON p.good = g.good_id
JOIN GoodTypes gt ON g.type = gt. good_type_id
WHERE good_type_name = 'entertainment'
GROUP BY  member_name, status