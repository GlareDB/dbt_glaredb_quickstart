{{ config(
    materialized='table',
    pre_hook=[
    "CREATE TABLE IF NOT EXISTS dbt_nyc_sales AS 
    SELECT * FROM 
    read_parquet('https://github.com/GlareDB/tutorial_data/raw/main/nyc_sales/sale_year=2019/sale_month=1/f55363e2587849bcb25c057be706c69d-0.parquet')"
]
) }}

with source as (

    select * from {{ source('glaredb', 'dbt_nyc_sales') }}

),

renamed as (

select
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

    from source

)

select * from renamed