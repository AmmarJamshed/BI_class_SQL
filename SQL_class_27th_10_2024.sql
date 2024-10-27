# creating database named ni_class_two
create database bi_class_two;

# create a table for supply chain
#Prod_id, qty, category, cost
create table bi_class_two.supplychain_o (
prod_id int Not Null PRIMARY KEY,
qty int,
category varchar(100),
cost int );

# Insert 
INSERT INTO bi_class_two.supplychain_o (prod_id, qty, category, cost)
values
(5, 13, 'gadget', 456),
(6, 21,'clothes', 520),
(7, 25, 'tech', 400),
(8, 15, 'food', 150),
(9, 10,'tech', 500),
(10, 30, 'clothes', 300),
(11, 23, 'gadget', 225),
(12, 19,'food', 180),
(13, 18, 'clothes', 250),
(14, 22, 'tech', 550);

select * from bi_class_two.supplychain_o;

# add column 
Alter table bi_class_two.supplychain_o
ADD delivery_status varchar(100);

# update
update bi_class_two.supplychain_o
set category = 'food'
where prod_id = 5;

# delete 
delete from bi_class_two.supplychain_o
where prod_id = 2;

# fill values using WHERE 
update bi_class_two.supplychain_o
set delivery_status = 'delivered'
where cost > 100;

# items of tech and food were found out to have not delivered