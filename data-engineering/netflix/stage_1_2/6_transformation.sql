USE DATABASE NETFLIX_TITLES;
USE WAREHOUSE NETFLIX;
-- check current data types
DESCRIBE TABLE NETFLIX_TITLES.PUBLIC.TITLES;

ALTER TABLE TITLES 
ADD COLUMN DATE_ADDED_NEW DATE;

DESCRIBE TABLE TITLES;

-- change the data type into date
UPDATE TITLES 
SET DATE_ADDED_NEW = TO_DATE ((SELECT REGEXP_REPLACE(DATE_ADDED, '^ +', '')), 'MON DD, YYYY');

-- drop old date_added column and rename the new date_added column
ALTER TABLE TITLES
DROP COLUMN DATE_ADDED;

ALTER TABLE TITLES
RENAME COLUMN DATE_ADDED_NEW TO DATE_ADDED;

SELECT * FROM TITLES LImit 10;
