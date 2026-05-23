create or replace table staging.customers_clean
as select distinct try_to_number(customer_id) as customer_id,
case when try_to_number(customer_id) is not null then 1 else 0 end as dq_customer_id
from raw.orders
where customer_id is not null