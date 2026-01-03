
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select fare_conditions
from "dwh_flight"."intermediate"."stg_flights__seats"
where fare_conditions is null



  
  
      
    ) dbt_internal_test