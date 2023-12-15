USE DATABASE NETFLIX_TITLES;
USE WAREHOUSE NETFLIX;

CREATE OR REPLACE VIEW DUPLICATE_TITLES_VIEW AS
SELECT T.TITLE, T.DIRECTOR, COUNT(*) AS DUPLICATE_COUNT
FROM NETFLIX_TITLES.PUBLIC.TITLES T
GROUP BY T.TITLE, T.DIRECTOR
HAVING COUNT(*) > 1;


