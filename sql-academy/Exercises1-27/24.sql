-- Определить кто и сколько потратил в июне 2005
-- Поля в результирующей таблице:
-- member_name
-- costs

SELECT member_name, SUM(amount*unit_price) AS costs FROM FamilyMembers
JOIN Payments ON FamilyMembers.member_id = Payments.family_member
WHERE Payments.date LIKE '%2005-06%'
GROUP BY member_name