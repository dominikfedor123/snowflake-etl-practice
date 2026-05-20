create or replace table staging.customers_clean
as select distinct customer_id
from raw.orders
where customer_id is not null