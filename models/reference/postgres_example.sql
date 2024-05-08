{{ config(
    materialized='view'
) }}

/*
read_postgres takes the following arguments:

read_postgres(
  <connection_str>, 
  <schema>, 
  <table>
  )

See here for more information:
https://docs.glaredb.com/reference/sql-functions/read_postgres.html

If you are connecting to multiple tables in the same instance of Postgres,
you may want to add your Postgres instance as an external data source. See
here for more information:
https://docs.glaredb.com/data-sources/postgres.html

*/

SELECT * FROM read_postgres(
  'postgresql://demo:demo@pg.demo.glaredb.com:5432/postgres',
  'public',
  'customer'
);
