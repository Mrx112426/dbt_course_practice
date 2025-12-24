
      
  
    

  create  table "dwh_flight"."snapshot"."dim_flights__airports"
  
  
    as
  
  (
    
    

    select *,
        md5(coalesce(cast(airport_code as varchar ), '')
         || '|' || coalesce(cast(now()::timestamp without time zone as varchar ), '')
        ) as dbt_scd_id,
        now()::timestamp without time zone as dbt_updated_at,
        now()::timestamp without time zone as dbt_valid_from,
        
  
  coalesce(nullif(now()::timestamp without time zone, now()::timestamp without time zone), '9999-01-01'::date)
  as dbt_valid_to
from (
        



select 
    airport_code,
    airport_name,
    city,
    coordinates,
    timezone
from "dwh_flight"."intermediate"."stg_flights__airports"
    ) sbq



  );
  
  