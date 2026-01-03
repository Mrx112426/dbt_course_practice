
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select aircraft_code
from "dwh_flight"."intermediate"."stg_flights__seats"
where aircraft_code is null



  
  
      
    ) dbt_internal_test