
  select seat_no
  from "dwh_flight"."intermediate"."stg_flights__seats"
  where not seat_no ~ '^[0-9]{1,2}[A-Z]+$'
