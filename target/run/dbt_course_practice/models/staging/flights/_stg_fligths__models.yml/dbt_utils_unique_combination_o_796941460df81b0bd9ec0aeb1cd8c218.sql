
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  





with validation_errors as (

    select
        seat_no, aircraft_code
    from "dwh_flight"."intermediate"."stg_flights__seats"
    group by seat_no, aircraft_code
    having count(*) > 1

)

select *
from validation_errors



  
  
      
    ) dbt_internal_test