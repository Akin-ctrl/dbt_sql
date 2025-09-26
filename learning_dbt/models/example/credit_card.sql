 {{config (materialized = 'table') }}

select payment, count(payment) as payment_count
from {{ ref('taxi_trips')}}
where payment = 'credit card'