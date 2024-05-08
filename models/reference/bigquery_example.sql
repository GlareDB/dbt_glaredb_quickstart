{{ config(
    materialized='view'
) }}

/*
read_bigquery takes the following arguments:

read_bigquery(
    <gcp_service_account_key>, 
    <project_id>, 
    <dataset_id>, 
    <table_id>
    )

See here for more information:
https://docs.glaredb.com/reference/sql-functions/read_bigquery.html

If you are connecting to multiple tables in the same instance of BigQuery,
you may want to add your BigQuery instance as an external data source. See
here for more information:
https://docs.glaredb.com/data-sources/bigquery.html
*/

select * from read_bigquery(
  '{
  "type": "service_account",
  "project_id": "my_project",
  "private_key_id": "some_private_key_id",
  "private_key": "-----BEGIN PRIVATE KEY-----\nsome_private_key\n-----END PRIVATE KEY-----\n",
  "client_email": "my_email@my_project.iam.gserviceaccount.com",
  "client_id": "115082301808251263615",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "my_client_x509_cert_url",
  "universe_domain": "googleapis.com"
}',
  'example-bigquery-project',
  'example-dataset',
  'users'
);