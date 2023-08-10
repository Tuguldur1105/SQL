select * from Production.customers
select left(first_name, 5), * from Production.customers

select right(last_name, 4), * from production.customers

select max(len(first_name)) from production.customers

select min(len(first_name)) from production.customers

select upper(first_name) as tom_usegeer, * from production.customers

select lower(first_name) as jijig_usgeer, * from production.customers

--date and time manipulation: 
select GETDATE() 
--getdate() ene yag odoo baigaa tsagiig haruulna

select dateadd(week,3,getdate())
select dateadd(week,14,getdate())
select dateadd(hour,-9,getdate())
select dateadd(minute,222,getdate())
--dateadd() command n odoo baigaa hugatsaanaas umnu hoino hedeer baigaag haruulna. haruulahdaa UTC tsagaar haruulna.
select sysdatetimeoffset()
-- yamar zoned baigaag harahad ashiglana

select dateadd(month,-3, getdate())
select dateadd(day, -5, getdate())
select dateadd(year,-2,getdate())

select * from dbo.orders
insert into dbo.orders
(CustomerID, EmployeeID, orderdate,
RequiredDate, ShippedDate, ShipVia, freight,
shipname, shipaddress, ShipCity, ShipRegion,
ShipPostalCode, ShipCountry)
values
('TOMSP',5,getdate(),
dateadd(week,3,getdate()),dateadd(day,2,getdate()),3, 12.11,
'oyuerdene', 'ih tenger','ulaanbaatar','ub',
12122,'mng')

select * from dbo.orders
select month(orderdate) as ZAHIALSAN_SAR, * from dbo.orders
where month(orderdate)=8
--zuvhun 8n sariin zahilagiig saraar haruulah bol ashiglana

select count(*) from dbo.orders
where month(orderdate)=9

select * from dbo.orders where day(orderdate)=1

select format(getdate(),'mm/dd/yyy hh:mm:ss') as USA, getdate() as MONGOLIA
--on sar udriig yamar formataar haruulmaar baigaa tohioldold ashiglana.

select *from sales.customers
where zip_code in (14127)

select * from sales.orders
select count (distinct (customer_id)) from sales.orders

select * from sales.order_items
select max (list_price) as hagmiin_unetei, min (list_price) as hamgiin_hyamd, avg (list_price) as dundaj_une from sales.order_items

select * from sales.customers
select max(len(street)) as hamgiin_urt_nertei_gudamj from sales.customers

select * from sales.Customers
select distinct(zip_code) from sales.customers
where state = 'NY'

select * from sales.customers
where state <> ' NY' and state <> 'TX'

--uguisgesen tohioldol <>, !=, not like, not in()

select * from sales.customers
where state not in('TX','NY')

select * from sales.customers
where email not like '%yahoo'

--what is the NULL
select * from dbo.customers where ContactTitle is null
--NULL iig haihdaa is iig ashiglana
select * from dbo.customers where ContactTitle=' '
--space iig olohdoo =' ' iig ashiglana

--DISTINCT unique buyu remove dupicate hiine
select distinct list_price, order_id from sales.order_items



