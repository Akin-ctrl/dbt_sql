
{{ config(materialized = "table")}}

select * 
from {{ ref('raw_taxi_trips') }}
where distance > 9 
