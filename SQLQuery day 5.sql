select distinct (list_price) from sales.order_items
where list_price > 599 and list_price <700 and discount =0.20 

select count (*) from production.customers
where email like 'yahoo.com' and state in('ca','ny') and zip_code in ('14217','11372')

select * from dbo.Employee
order by salary desc

select * from dbo.Customer_Info
order by first_name asc 

select * from dbo.Customer_Info
where first_name not like 'a%'
order by first_name asc 
--a usegeer ehelsen humuusees busdiig n doosh erembleh

select * from dbo.Customer_Info
where last_name not like 'a%'
order by last_name asc

/* olon mur comment bichih uyedee ashiglana*/

select * from dbo.orders
select requireddate as expected_due_date from dbo.Orders
-- columniin tolgoig temperory uurtuu evteihen bolgoh AS ashiglana

select first_name + ' '+ last_name as full_name, * from dbo.customer_info
--first name last name 2 iig neg colmnd harah command

select street +' '+ city +' '+ state as full_address, * from dbo.Customer_Info

select * from sales.customers
select first_name +' '+ last_name as full_name, * from sales.customers

select * from sales.order_items
select (list_price*(1-discount))+((list_price*(1-discount))*0.15) as sales_price, * from sales.order_items

--Data manipulation function
--' khan-uul ' space iig arilgah command RTRIM() baruun talaas, LTRIM() zuun talaas arilganaa
select rtrim(contactname), * from dbo.customers

--UPPER , LOWER command n UPPER n buh usgiig tomoor haruulna, LOWER n buh usgiig jijigeer haruulnaa
select lower(contacttitle) as jijgeer_haruulna, upper(address) as tomoor_haruulna, * from dbo.customers

--RIGHT(phone, 4) baruun talaas 4 useg harahaar bol, LEFT(phone, 4) zuun talaas 4 useg haruulna
select left(first_name, 4), * from dbo.customer_info

select right(email, 5) as suuliin_5n_usgeer, * from dbo.customer_info

--LEN command urtiin toog haruulahad ashiglana
select len(first_name), first_name from dbo.customer_info
order by 1 desc

select len(last_name), last_name from dbo.customer_info
order by 1 desc

select len(product_name), product_name from production.products
order by 1 desc

select max(len(product_name)) from production.products
--product_name iin hamgiin urt usegtei utgiig haruulna zuvhun 1 l utga

select * from dbo.Customer_Info
where len(first_name)>=10









