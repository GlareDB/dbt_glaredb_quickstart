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

select * from
read_parquet(
    'file_url', 
    access_key_id => '<aws_access_key_id>', 
    secret_access_key => '<aws_secret_access_key>', 
    region => '<aws_region>'
)