create database proddb;

use proddb;

SELECT * FROM proddb.prod_products;

select distinct Product_ID from prod_products;

ALTER TABLE prod_products
RENAME COLUMN `Product ID` TO Product_ID;

ALTER TABLE prod_products
RENAME COLUMN `Product Name` TO Product_Name;

ALTER TABLE prod_products
RENAME COLUMN `Unit Price ($)` TO Unit_Price;


SELECT * FROM proddb.prod_inventory_dataset;

ALTER TABLE prod_inventory_dataset
RENAME COLUMN `Order Date (DD/MM/YYYY)` TO Order_Date;

ALTER TABLE prod_inventory_dataset
RENAME COLUMN `Product ID` TO Product_ID;

select distinct Product_ID from prod_inventory_dataset
order by Product_ID;

update prod_inventory_dataset
set Product_ID = 7 where Product_ID = 21;

update prod_inventory_dataset
set Product_ID = 11 where Product_ID = 22;

select * from prod_products;

create table new_table as
select 
a.Product_ID,
a.Availability,
a.Demand,
a.Order_Date,
b.Product_Name,
b.Unit_Price
from prod_inventory_dataset as a 
left join prod_products as b on 
a.Product_ID = b.Product_ID;

select * from new_table;