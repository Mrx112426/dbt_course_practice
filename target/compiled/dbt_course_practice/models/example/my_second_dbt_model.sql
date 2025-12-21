-- Use the `ref` function to select from other models

select *
from "dwh_flight"."intermediate"."my_first_dbt_model"
where id = 1