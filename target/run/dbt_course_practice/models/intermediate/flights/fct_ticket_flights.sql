
  
    

  create  table "dwh_flight"."intermediate"."fct_ticket_flights__dbt_tmp"
  
  
    as
  
  (
    
select
    ticket_no, 
    flight_id, 
    fare_conditions,
    amount
from
    "dwh_flight"."intermediate"."stg_flights__ticket_flights"
  );
  