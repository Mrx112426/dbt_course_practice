
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select book_ref
from "dwh_flight"."intermediate"."fct_bookings_v1"
where book_ref is null



  
  
      
    ) dbt_internal_test