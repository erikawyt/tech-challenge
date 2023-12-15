-- First, create an external stage for the GCS bucket
CREATE STAGE netflix_stage
  URL='gcs://temp-bucket-2023'
  STORAGE_INTEGRATION = gcs_integration;
