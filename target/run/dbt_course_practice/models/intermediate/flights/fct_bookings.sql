
  
    

  create  table "dwh_flight"."intermediate"."fct_bookings_v1__dbt_tmp"
  
  
    
  
  (
    book_ref varchar(8) not null,
    book_date timestamptz,
    total_amount numeric(10, 2) check (total_amount > 0)
    
    )
 ;
    insert into "dwh_flight"."intermediate"."fct_bookings_v1__dbt_tmp" (
      book_ref, book_date, total_amount
    )
  
  (
    
    select book_ref, book_date, total_amount
    from (
        
select 
    book_ref,
	book_date,
	total_amount
from "dwh_flight"."intermediate"."stg_flights__bookings"
    ) as model_subq
  );
  