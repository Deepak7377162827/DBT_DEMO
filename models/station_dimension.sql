with bike as( select distinct
start_station_id as station_id,
start_station_name as start_station_name,
start_station_latitude as start_station_latitude,
start_station_longitude as start_station_longitude
from
    {{ source('demo', 'bike_ride') }}
)
select * from bike