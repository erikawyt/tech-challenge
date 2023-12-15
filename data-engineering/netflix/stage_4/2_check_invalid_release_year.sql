USE DATABASE NETFLIX_TITLES;
USE WAREHOUSE NETFLIX;

-- create a view for invalid release year
CREATE OR REPLACE VIEW INVALID_RELEASE_YEAR_VIEW AS
SELECT *
FROM NETFLIX_TITLES.PUBLIC.TITLES
WHERE RELEASE_YEAR < 1900 OR RELEASE_YEAR > YEAR(CURRENT_DATE);

-- count number of invalid data
SELECT COUNT(RELEASE_YEAR) FROM INVALID_RELEASE_YEAR_VIEW;