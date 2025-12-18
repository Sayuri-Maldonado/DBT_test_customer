
-- Use the `ref` function to select from other models

{{ config(materialized='view') }}

select 
id, 
first_name,
last_name,
email,
age,
city
from  {{ source('TB_DBT', 'customer_db') }}
//from raw.customer_db
where id is not null