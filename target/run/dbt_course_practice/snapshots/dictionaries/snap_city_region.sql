
      
  
    

  create  table "dwh_flight"."snapshot"."snap_city_region"
  
  
    as
  
  (
    
    

    select *,
        md5(coalesce(cast(city as varchar ), '')
         || '|' || coalesce(cast(updated_at as varchar ), '')
        ) as dbt_scd_id,
        updated_at as dbt_updated_at,
        updated_at as dbt_valid_from,
        
  
  coalesce(nullif(updated_at, updated_at), '9999-01-01'::date)
  as dbt_valid_to
from (
        



select 
    city,
    region,
    updated_at
from 
  "dwh_flight"."intermediate_seeds"."city_region"


    ) sbq



  );
  
  