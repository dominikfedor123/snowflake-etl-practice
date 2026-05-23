create or replace table mart.customers_final
as select customer_id
from staging.customers_clean