
    
    

with child as (
    select aircraft_code as from_field
    from "dwh_flight"."intermediate"."stg_flights__seats"
    where aircraft_code is not null
),

parent as (
    select aircraft_code as to_field
    from "dwh_flight"."intermediate"."stg_flights__aircrafts"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


