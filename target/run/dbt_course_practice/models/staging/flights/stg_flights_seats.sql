
  
    

  create  table "dwh_flight"."intermediate"."stg_flights_seats__dbt_tmp"
  
  
    as
  
  (
    
select 
    airport_code,
    airport_name,
    city,
    coordinates,
    timezone
from 
	"dwh_flight"."demo_src"."seats"
  );
  