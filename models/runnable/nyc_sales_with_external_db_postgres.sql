{{ config(
    materialized='view',
    pre_hook=[
    "CREATE EXTERNAL DATABASE my_postgres
    FROM postgres
    OPTIONS(
        connection_string = 'postgresql://demo:demo@pg.demo.glaredb.com:5432/postgres'
    );"
]
) }}

SELECT
    lookup.borough_name,
    sales.land_square_feet,
    sales.gross_square_feet,
    sales.year_built,
    sales.sale_price,
    sales.sale_date,
    sales.latitude,
    sales.longitude,
    sales.bin,
    sales.bbl
FROM {{ ref('nyc_sales_jan_feb_2019') }} sales
JOIN my_postgres.public.borough_lookup lookup
ON sales.borough = lookup.borough_id