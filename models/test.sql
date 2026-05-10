select
*
from {{ source('demo', 'bike_ride') }}
limit 10