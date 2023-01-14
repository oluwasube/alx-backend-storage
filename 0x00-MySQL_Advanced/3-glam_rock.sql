-- SQL script that lists all bands with Glam rock as their main style, ranked by their longevity
WITH band_lifespan AS (
    SELECT band_name, (split - formed) as lifespan
    FROM metal_bands
    WHERE main_style = 'Glam rock'
)
SELECT band_name, lifespan, RANK() OVER (ORDER BY lifespan DESC) AS rank
FROM band_lifespan
ORDER BY rank;

