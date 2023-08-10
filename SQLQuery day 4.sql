select * from dbo.Customers
where CustomerID ='66966' 
delete from dbo.Customers where CustomerID ='66966'
--create (insert)
--read (select)
--update
--delete ene 4n uildeliig crud operations 

insert into dbo.customers (customerid, CompanyName, ContactName, ContactTitle, Address, city, Region, PostalCode, Country, phone, Fax)
values ('1234k', 'google', 'tuguldur', 'data anaylist', 'ajax st', 'fairfax', 'va', '22555', 'usa', '999-888-7777','null') 
select *from dbo.customers
where CustomerID='1234k'
update dbo.Customers set contacttitle='cmo', address='manchester st'
where companyname='google' and contactname='tuguldur'
--PK mean primary key davtagdahgui
select top 20 * from dbo.Covid_Data_Team_DC
--ehini 20 muriig harah
select top 10 percent * from dbo.Customers
--ehnii 10 % iig haruulah
select * from sales.order_items
select max (list_price) from sales.order_items
select min (list_price) from sales.order_items
select avg (list_price) from sales.order_items
select * from sales.order_items
select max (discount), min (discount), avg (discount)
from sales.
select max (discount) as hamgiin_ih, min (discount) as hamgiin_baga, avg (discount) as dundaj
from sales.order_items
--column daa ner uguhud as blablal
select count (*) from sales.order_items;
select count (discount) from sales.order_items
where discount=0.10
--count mur tooloh arga
select sum (list_price * quantity) 
from sales.order_items
select sum (list_price * quantity) 
from sales.order_items
--sum niilber gargah

select * from production.customers 
where first_name like 'a%'
--118 row
select *from production.customers
where first_name like '%a'
--534 row
select *from production.customers
where first_name like '%o%'
--392 row
select *from production.customers
where first_name like '_r%'
--86 row
select *from production.customers
where first_name like 'a_%'
--118 row
select * from sales.order_items 
order by list_price desc
--order by command erembleh desc ihees n bagaruu n ASC bagaas n iheruu n erembleh

--asc ascending order
--desc descending order

select * from dbo.customers;
insert into dbo.customers (customerid,companyname, contactname,contacttitle,address,city,region,postalcode,country,phone,fax)
values ('4444k','marble','boldoooo','manager','ajax st','london','ea','11111','eng','456-654-6548','54655');

select * from sales.order_items
select top 5 list_price from sales.order_items
order by list_price desc
--hamgiin unetei top 5 listiig gargah
select distinct top 5 list_price from sales.order_items
order by list_price desc
--distinct gedeg n davharduulahgui haih







