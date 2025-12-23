
      
  
    

  create  table "dwh_flight"."intermediate"."stg_flights__bookings__dbt_tmp"
  
  
    as
  
  (
    
select 
	book_ref,
	book_date,
	total_amount
from 
	"dwh_flight"."demo_src"."bookings"

  );
  
  