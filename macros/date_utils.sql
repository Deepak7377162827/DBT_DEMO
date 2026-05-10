{% macro function1(x) %}

case
    when dayname(to_timestamp({{ x }})) in ('Sat', 'Sun')
    then 'weekend'
    else 'businessday'
end

{% endmacro %}

{%macro station_of_year(y)%}
case when month(to_timestamp({{y}})) in(12,1,2)
then 'winter'
when  month(to_timestamp({{y}})) in(3,4,5)
then 'spring'
when  month(to_timestamp({{y}})) in(6,7,8)
then 'summer'
else 'authmn' end 
{%endmacro%}
