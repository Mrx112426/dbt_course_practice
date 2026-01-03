
  
    

  create  table "dwh_flight"."intermediate"."stg_flights__bookings__dbt_tmp"
  
  
    as
  
  (
    
SELECT
    book_ref,
    book_date,
    total_amount
FROM
    "dwh_flight"."demo_src"."bookings"
  );
  