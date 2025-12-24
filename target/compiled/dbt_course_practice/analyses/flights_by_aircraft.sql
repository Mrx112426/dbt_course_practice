  



    


SELECT 
    
    SUM(CASE WHEN aircraft_code = 'CN1' THEN 1 ELSE 0 END) as fligths_CN1,
    SUM(CASE WHEN aircraft_code = 'CR2' THEN 1 ELSE 0 END) as fligths_CR2,
    SUM(CASE WHEN aircraft_code = '763' THEN 1 ELSE 0 END) as fligths_763,
    SUM(CASE WHEN aircraft_code = '773' THEN 1 ELSE 0 END) as fligths_773,
    SUM(CASE WHEN aircraft_code = '319' THEN 1 ELSE 0 END) as fligths_319,
    SUM(CASE WHEN aircraft_code = '733' THEN 1 ELSE 0 END) as fligths_733,
    SUM(CASE WHEN aircraft_code = 'SU9' THEN 1 ELSE 0 END) as fligths_SU9,
    SUM(CASE WHEN aircraft_code = '321' THEN 1 ELSE 0 END) as fligths_321
FROM
    "dwh_flight"."intermediate"."fct_flights"