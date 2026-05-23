create or replace table mart.customers_clean
as select customer_id
from staging.customers_clean