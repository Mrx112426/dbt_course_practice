
select
    ticket_no, 
    book_ref, 
    passenger_id, 
    passenger_name, 
    contact_data
from
    "dwh_flight"."intermediate"."stg_flights__tickets"