
select
    ticket_no, 
    flight_id, 
    fare_conditions,
    amount
from
    "dwh_flight"."intermediate"."stg_flights__ticket_flights"