create database testdb;

use testdb;

SELECT * FROM testdb.test_inventory_dataset;

select distinct Demand from test_inventory_dataset;

ALTER TABLE test_inventory_dataset
RENAME COLUMN `Order Date (DD/MM/YYYY)` TO Order_Date;

ALTER TABLE test_inventory_dataset
RENAME COLUMN `Product ID` TO Product_ID;


SELECT * FROM testdb.test_products;

select distinct `Unit Price ($)`  from test_products;

ALTER TABLE test_products
RENAME COLUMN `Product ID` TO Product_ID;

ALTER TABLE test_products
RENAME COLUMN `Product Name` TO Product_Name;

ALTER TABLE test_products
RENAME COLUMN `Unit Price ($)` TO Unit_Price;

create table new_table as
select 
a.Product_ID,
a.Availability,
a.Demand,
a.Order_Date,
b.Product_Name,
b.Unit_Price
from test_inventory_dataset as a 
left join test_products as b on 
a.Product_ID = b.Product_ID;

select * from new_table;