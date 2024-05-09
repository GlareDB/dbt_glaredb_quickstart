{{ config(
    materialized='view'
) }}

SELECT * FROM {{ ref('a_stg_dbt_nyc_sales')}}
UNION
SELECT
    borough,
    neighborhood,
    building_class_category,
    residential_units,
    commercial_units,
    total_units,
    land_square_feet,
    gross_square_feet,
    year_built,
    sale_price,
    sale_date,
    latitude,
    longitude,
    bin,
    bbl
FROM read_parquet('https://github.com/GlareDB/tutorial_data/raw/main/nyc_sales/sale_year=2019/sale_month=2/f55363e2587849bcb25c057be706c69d-0.parquet')
