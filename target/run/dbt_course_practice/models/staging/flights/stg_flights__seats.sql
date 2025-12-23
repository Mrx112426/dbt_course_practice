
  
    

  create  table "dwh_flight"."intermediate"."stg_flights__seats__dbt_tmp"
  
  
    as
  
  (
    
select 
    aircraft_code,
    seat_no,
    fare_conditions
from 
	"dwh_flight"."demo_src"."seats"
  );
  