{{ config(
    materialized='view'
) }}

/*
read_snowflake takes the following arguments:

read_snowflake(
  <account>,
  <username>,
  <password>,
  <database>,
  <warehouse>,
  <role>,
  <schema>,
  <table>
)

See here for more information:
https://docs.glaredb.com/reference/sql-functions/read_snowflake.html

If you are connecting to multiple tables in the same instance of Snowflake,
you may want to add your Snowflake instance as an external data source. See
here for more information:
https://docs.glaredb.com/data-sources/snowflake.html

*/

select * from read_snowflake(
  'xy12345', 
  'snowflake_username',
  'snowflake_password',
  'my_database',
  'my_warehouse',
  'USERADMIN',
  'public',
  'users'
);

