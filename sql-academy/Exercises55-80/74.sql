-- Выведите идентификатор и признак наличия интернета в помещении. Если интернет в сдаваемом жилье присутствует, то выведите «YES», иначе «NO».
-- Поля в результирующей таблице:
-- id
-- has_internet

SELECT id, CASE 
    WHEN has_internet = true THEN 'YES'
    WHEN has_internet = false THEN 'NO'
    END AS has_internet
FROM Rooms