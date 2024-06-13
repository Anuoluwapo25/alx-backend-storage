-- creates a table users
-- script that ranks country origins of bands ordered by number
SELECT DISTINCT origin, SUM(fans) AS nb_fans FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
