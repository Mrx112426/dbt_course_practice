
  create view "dwh_flight"."intermediate"."dm_seats_occupied__dbt_tmp"
    
    
  as (
    SELECT
    f.flight_no, 
    count(ft.flight_id) AS tickets
FROM
    "dwh_flight"."intermediate"."fct_flights" f
    LEFT JOIN "dwh_flight"."intermediate"."fct_ticket_flights" ft 
        ON ft.flight_id = f.flight_id
    LEFT JOIN "dwh_flight"."intermediate"."fct_tickets" t
        ON t.ticket_no = ft.ticket_no
GROUP BY
    f.flight_no
  );