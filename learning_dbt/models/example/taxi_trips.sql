-- DBT Model that creates the chapter2/taxi_trips table.

{{config (materialized ='view')}}
select * from {{ ref('raw_taxi_trips') }}
where distance > 9