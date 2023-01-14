-- Write a SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans
WITH ranked_bands AS (
    SELECT origin, COUNT(*) AS nb_fans
    FROM metal_bands
    GROUP BY origin
)
SELECT origin, nb_fans, RANK() OVER (ORDER BY nb_fans DESC) AS rank
FROM ranked_bands
ORDER BY rank;

