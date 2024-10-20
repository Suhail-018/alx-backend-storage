-- This SQL script select band_name, and lifespan column which is difference
-- Select bands with Glam rock as the main style and compute lifespan
-- Select bands with Glam rock as the main style and compute lifespan correctly
SELECT
    name AS band_name,
    IF(split IS NULL OR split = 0, 2023 - formed, split - formed) AS lifespan
FROM
    bands
WHERE
    style = 'Glam rock'
ORDER BY
    lifespan DESC;
