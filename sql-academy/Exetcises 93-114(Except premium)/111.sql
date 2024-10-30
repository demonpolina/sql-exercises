-- Посчитайте население каждого региона. В качестве результата выведите название региона и его численность населения.
-- Поля в результирующей таблице:
-- region_name
-- total_population

SELECT Regions.name AS region_name,SUM(population) AS total_population FROM Regions
JOIN Cities ON Cities.regionid = Regions.id
GROUP BY regionid