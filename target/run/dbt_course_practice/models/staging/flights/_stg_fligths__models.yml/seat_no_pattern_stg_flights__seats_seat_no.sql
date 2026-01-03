
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
  select seat_no
  from "dwh_flight"."intermediate"."stg_flights__seats"
  where not seat_no ~ '^[0-9]{1,2}[A-Z]+$'

  
  
      
    ) dbt_internal_test