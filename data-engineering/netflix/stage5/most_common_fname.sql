USE DATABASE NETFLIX_TITLES;
USE WAREHOUSE NETFLIX;

WITH name_parts AS (
  SELECT
    TRIM(SPLIT(TRIM(VALUE::STRING), ' ')[0]) AS first_name
  FROM
    TITLES,
    -- split the names using comma as delimiter
    LATERAL FLATTEN(INPUT => SPLIT(TITLES.CAST, ','))
  WHERE
    -- Exclude empty values
    TRIM(VALUE::STRING) <> ''
)

SELECT first_name,
    COUNT(*) AS name_count
FROM name_parts
GROUP BY first_name
ORDER BY name_count DESC
LIMIT 1;
