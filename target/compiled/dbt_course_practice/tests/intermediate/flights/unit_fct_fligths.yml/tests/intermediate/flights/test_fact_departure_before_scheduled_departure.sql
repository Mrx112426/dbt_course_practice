
with __dbt__cte__stg_flights__flights as (

-- Fixture for stg_flights__flights
select cast(null as integer) as "flight_id", cast(null as character varying(6)) as "flight_no", 
    
    cast('2017-09-01T09:25:00+00:00' as timestamp with time zone)
 as "scheduled_departure", cast(null as timestamp with time zone) as "scheduled_arrival", cast(null as character varying(3)) as "departure_airport", cast(null as character varying(3)) as "arrival_airport", cast(null as character varying(20)) as "status", cast(null as character varying(3)) as "aircraft_code", 
    
    cast('2017-09-01T09:23:00+00:00' as timestamp with time zone)
 as "actual_departure", cast(null as timestamp with time zone) as "actual_arrival"
) select
    flight_id, 
    flight_no, 
    scheduled_departure, 
    scheduled_arrival, 
    departure_airport, 
    arrival_airport, 
    status, 
    aircraft_code, 
    actual_departure, 
    actual_arrival,
    case
        when actual_departure is not null and scheduled_departure < actual_departure
            then actual_departure - scheduled_departure
            else INTERVAL '0 seconds'
    end as flight_departure_delay,
    flight_id  || ', ' || flight_no 
 as test_macros
from
    __dbt__cte__stg_flights__flights