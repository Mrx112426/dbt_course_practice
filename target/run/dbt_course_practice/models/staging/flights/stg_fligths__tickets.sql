
  
    

  create  table "dwh_flight"."intermediate"."stg_fligths__tickets__dbt_tmp"
  
  
    as
  
  (
    
select 
    aircraft_code,
    seat_no,
    fare_conditions
from 
	"dwh_flight"."demo_src"."seats"
  );
  