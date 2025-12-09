
select version();

-- ctrl + enter dans dbeaver --> execute les lignes qui se touchent jq'au prochain ;
set VARIABLE path_input = 'C:\Users\antoi\Documents\codes\dbt_localbikes\seeds\';
SELECT getvariable('path_input');

-- drop schema raw_sales cascade;
-- drop schema raw_production cascade;

------------------------------
-- sales
------------------------------
create schema if not exists raw_sales;

create or replace table raw_sales.customers as
 SELECT * FROM read_csv(getvariable('path_input') || 'sales/customers.csv', AUTO_DETECT=TRUE, header=true, nullstr='NULL');
create or replace table raw_sales.order_items as
 SELECT * FROM read_csv(getvariable('path_input') || 'sales/order_items.csv', AUTO_DETECT=TRUE, header=true, nullstr='NULL');
create or replace table raw_sales.orders as
 SELECT * FROM read_csv(getvariable('path_input') || 'sales/orders.csv', AUTO_DETECT=TRUE, header=true, nullstr='NULL');
create or replace table raw_sales.staffs as
 SELECT * FROM read_csv(getvariable('path_input') || 'sales/staffs.csv', AUTO_DETECT=TRUE, header=true, nullstr='NULL');
create or replace table raw_sales.stores as
 SELECT * FROM read_csv(getvariable('path_input') || 'sales/stores.csv', AUTO_DETECT=TRUE, header=true, nullstr='NULL');

------------------------------
-- production
------------------------------
create schema if not exists raw_production;

create or replace table raw_production.brands as
 SELECT * FROM read_csv(getvariable('path_input') || 'production/brands.csv', AUTO_DETECT=TRUE, header=true, nullstr='NULL');
create or replace table raw_production.categories as
 SELECT * FROM read_csv(getvariable('path_input') || 'production/categories.csv', AUTO_DETECT=TRUE, header=true, nullstr='NULL');
create or replace table raw_production.products as
 SELECT * FROM read_csv(getvariable('path_input') || 'production/products.csv', AUTO_DETECT=TRUE, header=true, nullstr='NULL');
create or replace table raw_production.stocks as
 SELECT * FROM read_csv(getvariable('path_input') || 'production/stocks.csv', AUTO_DETECT=TRUE, header=true, nullstr='NULL');

------------------------------
-- recap
------------------------------
SHOW all TABLES;
describe raw_sales.customers;
SUMMARIZE raw_sales.customers;
