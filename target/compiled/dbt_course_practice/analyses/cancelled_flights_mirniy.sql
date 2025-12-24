select
  scheduled_departure::date as scheduled_departure_date,
  count(*) 
from 
  "dwh_flight"."intermediate"."fct_flights"
where 
    departure_airport = 'MJZ' 
    and status = 'Cancelled' 
group by scheduled_departure_date