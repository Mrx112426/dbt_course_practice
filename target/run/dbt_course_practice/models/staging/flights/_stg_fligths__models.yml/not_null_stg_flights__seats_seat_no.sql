
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select seat_no
from "dwh_flight"."intermediate"."stg_flights__seats"
where seat_no is null



  
  
      
    ) dbt_internal_test