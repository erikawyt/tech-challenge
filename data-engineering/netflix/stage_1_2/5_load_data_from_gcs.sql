-- Now, load data from the CSV file in the GCS bucket
USE DATABASE NETFLIX_TITLES;
COPY INTO NETFLIX_TITLES.PUBLIC.TITLES
FROM '@netflix_stage/netflix_titles.csv'
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '"')
ON_ERROR = 'CONTINUE';