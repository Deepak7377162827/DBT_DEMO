with cte as(
    select to_timestamp(ride_start_time) as started_at,
    date(to_timestamp(ride_start_time)) as date_started_at,
    hour(to_timestamp(ride_start_time)) as hours_atarted_at,
    case
    when dayname(to_timestamp(ride_start_time)) in ('Sat', 'Sun')
    then 'weekend'
    else 'businessday'
end as day_type,
case when month(to_timestamp(ride_start_time)) in(12,1,2)
then 'winter'
when  month(to_timestamp(ride_start_time)) in(3,4,5)
then 'spring'
when  month(to_timestamp(ride_start_time)) in(6,7,8)
then 'summer'
else 'authmn' end as station_of_yera
     from DEMO.DEMO_SCHEMA.BIKE_RIDE
)
select * from cte