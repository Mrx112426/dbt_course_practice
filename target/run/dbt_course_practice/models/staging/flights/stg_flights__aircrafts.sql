
  
    

  create  table "dwh_flight"."intermediate"."stg_flights__aircrafts__dbt_tmp"
  
  
    as
  
  (
    
select 
	*
from 
	"dwh_flight"."demo_src"."aircrafts"
  );
  