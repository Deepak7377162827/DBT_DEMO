with cte as (

    select
        to_timestamp(ride_start_time) as started_at,

        date(to_timestamp(ride_start_time)) as date_started_at,

        hour(to_timestamp(ride_start_time)) as hour_started_at,

        {{ function1('ride_start_time') }} as day_name,

        {{ station_of_year('ride_start_time') }} as station_of_year

    from DEMO.DEMO_SCHEMA.BIKE_RIDE

)

select *
from cte