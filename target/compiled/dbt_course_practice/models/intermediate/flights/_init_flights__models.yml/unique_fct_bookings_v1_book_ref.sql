
    
    

select
    book_ref as unique_field,
    count(*) as n_records

from "dwh_flight"."intermediate"."fct_bookings_v1"
where book_ref is not null
group by book_ref
having count(*) > 1


