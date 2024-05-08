{{ config(
    materialized='view'
) }}

/*
read_mysql takes the following arguments:

read_mysql(
  <connection_str>, 
  <schema>, 
  <table>
)

See here for more information:
https://docs.glaredb.com/reference/sql-functions/read_mysql.html

If you are connecting to multiple tables in the same instance of MySQL,
you may want to add your MySQL instance as an external data source. See
here for more information:
https://docs.glaredb.com/data-sources/mysql.html

*/

select * from read_mysql(
  'host=your.host port=3306 user=mysql password=password database=database',
  'public',
  'users'
)

