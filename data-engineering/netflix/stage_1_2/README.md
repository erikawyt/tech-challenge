# Stage 1 and 2 - Create a database, schema and table in snowflake. ELT the the data from gcs bucket into snowflake table.
This directory contains SQL scripts for setting up the Netflix titles project in Snowflake as well as data loading and transformation.

## Files Description
1. Script to create the 'TITLES' table with clustering by release year.

2. Script to create the 'NETFLIX' warehouse in Snowflake.

3.  Script to set up storage integration with Google Cloud Storage.

4. Script to create an external stage pointing to the GCS bucket.

5. Script to load data from the 'netflix_titles.csv' file in the GCS bucket into the 'TITLES' table in Snowflake.
6. Script to check for data quality and transform data types.