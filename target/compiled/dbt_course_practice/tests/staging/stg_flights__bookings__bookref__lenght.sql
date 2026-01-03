
select 
  book_ref
from 
  "dwh_flight"."intermediate"."stg_flights__bookings"
where 
  length(book_ref) > 3