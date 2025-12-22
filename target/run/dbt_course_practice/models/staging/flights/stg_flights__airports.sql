
  
    

  create  table "dwh_flight"."intermediate"."stg_flights__airports__dbt_tmp"
  
  
    as
  
  (
    
select 
	*
from 
	"dwh_flight"."demo_src"."airports"
  );
  