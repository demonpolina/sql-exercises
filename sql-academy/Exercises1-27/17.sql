-- Определить, сколько потратил в 2005 году каждый из членов семьи. В результирующей выборке не выводите тех членов семьи, которые ничего не потратили.
-- Поля в результирующей таблице:
-- member_name
-- status
-- costs

SELECT member_name, status, SUM(p.amount*p.unit_price) AS costs FROM FamilyMembers
JOIN Payments AS p ON FamilyMembers.member_id = p.family_member
WHERE p.date LIKE '%2005%'
GROUP BY member_name, status