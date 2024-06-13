-- creates a table users
-- script that ranks country origins of bands ordered by number


SELECT origin, COUNT(*) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
