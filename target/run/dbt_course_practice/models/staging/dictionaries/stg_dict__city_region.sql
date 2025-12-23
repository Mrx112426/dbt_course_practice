
  
    

  create  table "dwh_flight"."intermediate"."stg_dict__city_region__dbt_tmp"
  
  
    as
  
  (
    
select 
	  city,
    region
from 
  "dwh_flight"."intermediate"."city_region"
  );
  