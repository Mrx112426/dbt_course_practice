
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
select 
  book_ref
from 
  "dwh_flight"."intermediate"."stg_flights__bookings"
where 
  length(book_ref) > 3
  
  
      
    ) dbt_internal_test