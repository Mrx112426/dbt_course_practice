
  
    

  create  table "dwh_flight"."intermediate"."stg_flights__flights__dbt_tmp"
  
  
    as
  
  (
    
select 
    flight_id,
    flight_no,
    scheduled_departure,
    scheduled_arrival,	
    departure_airport,	
    arrival_airport,
    status,
    aircraft_code,
    actual_departure,
    actual_arrival
from 
	"dwh_flight"."demo_src"."flights"
  );
  