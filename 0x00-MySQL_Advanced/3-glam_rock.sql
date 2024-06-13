-- Script to calculate lifespan of Glam rock bands until 2022
-- calculate longevity of band
SELECT band_name,
       (IFNULL(2022, YEAR(split)) - YEAR(formed)) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
