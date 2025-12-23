
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_amount
from "dwh_flight"."intermediate"."fct_bookings_v1"
where total_amount is null



  
  
      
    ) dbt_internal_test