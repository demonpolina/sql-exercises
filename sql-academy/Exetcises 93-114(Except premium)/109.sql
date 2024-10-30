-- Выведите название страны, где находится город «Salzburg»
-- Поля в результирующей таблице:
-- country_name

SELECT Countries.name AS country_name FROM Countries
WHERE id = (
    SELECT countryid FROM Regions
    JOIN Cities ON Regions.id = Cities.regionid
    WHERE Cities.name = 'Salzburg')