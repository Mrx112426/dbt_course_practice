
  
    

  create  table "dwh_flight"."intermediate"."stg_flights__boarding_passes__dbt_tmp"
  
  
    as
  
  (
    
select 
    ticket_no,
    flight_id,
    boarding_no, 
    seat_no
from 
	"dwh_flight"."demo_src"."boarding_passes"
  );
  