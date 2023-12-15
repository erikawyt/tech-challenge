USE DATABASE NETFLIX_TITLES;
USE WAREHOUSE NETFLIX;

WITH TVShowCounts AS (
    SELECT
        RELEASE_YEAR,
        COUNT(*) AS count,
        LAG(COUNT(*), 1) OVER (ORDER BY RELEASE_YEAR) AS previous_count

    FROM
        NETFLIX_TITLES.PUBLIC.TITLES
    WHERE
        type = 'TV Show'
    GROUP BY
        RELEASE_YEAR
)

SELECT
    RELEASE_YEAR,
    count,
    previous_count,
    CASE
        WHEN previous_count = 0 THEN null
        ELSE ((count - previous_count) / CAST(previous_count AS FLOAT)) * 100 END AS percentage_increase
FROM TVShowCounts
WHERE percentage_increase  is not null
ORDER BY percentage_increase DESC
Limit 1;
