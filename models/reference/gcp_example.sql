{{ config(
    materialized='view'
) }}

/*
read_parquet can be used to read parquet files in a variety of locations
includes hosted anywhere online, or in cloud storage.

Comparable functions exist for read_excel, read_csv, read_json, read_bson, 
read_ndjson, and read_delta.

See here for more information:
https://docs.glaredb.com/reference/sql-functions/parquet_scan.html

(parquet_scan and read_parquet are aliases)

*/

SELECT * FROM parquet_scan(
    'gs://my-bucket/path/*',
    service_account_key => '<service_account_key>'
)