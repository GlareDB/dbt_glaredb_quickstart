{{ config(
    materialized='view'
) }}

/*
read_sqlserver takes the following arguments:

read_sqlserver(
  <connection_string>, 
  <schema>, 
  <table>
  )

See here for more information:
https://docs.glaredb.com/reference/sql-functions/read_sqlserver.html

If you are connecting to multiple tables in the same instance of SQL Server,
you may want to add your SQL Server instance as an external data source. See
here for more information:
https://docs.glaredb.com/data-sources/sql-server.html

*/

select * from read_sqlserver(
  'server=tcp:my.sqlserver.host,1433;user=SA;password=Password123;TrustServerCertificate=true',
  'dbo',
  'users'
);

