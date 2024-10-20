-- This SQL script select band_name, and lifespan column which is difference
-- Select bands with Glam rock as the main style and compute lifespan
SELECT
    name AS band_name,
    IF(split IS NULL, 2022 - formed, split - formed) AS lifespan
FROM
    bands
WHERE
    style = 'Glam rock'
ORDER BY
    lifespan DESC;
