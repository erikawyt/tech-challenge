USE DATABASE NETFLIX_TITLES;
USE WAREHOUSE NETFLIX;
SELECT EXTRACT(month FROM DATE_ADDED) as month, COUNT(*) as releases
FROM NETFLIX_TITLES.PUBLIC.TITLES
GROUP BY month
ORDER BY releases DESC
LIMIT 1;