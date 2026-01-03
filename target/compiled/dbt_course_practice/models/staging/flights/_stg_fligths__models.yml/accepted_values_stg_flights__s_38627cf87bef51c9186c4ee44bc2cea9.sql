
    
    

with all_values as (

    select
        fare_conditions as value_field,
        count(*) as n_records

    from "dwh_flight"."intermediate"."stg_flights__seats"
    group by fare_conditions

)

select *
from all_values
where value_field not in (
    'Business','Comfort','Economy'
)


