select product_id, product_name, category_id
from stage.products 
where product_name = 'banana'
select * from sales.order_items 
where list_price < '1000'
select * from sales.order_items 
where list_price > 5000
select * from sales.order_items
where list_price <= 599.99
select * from sales.order_items
where list_price <> 429 
select * from sales.order_items
where discount <> 0.20
select * from sales.order_items
where list_price between 500 and 1000
where list_price >= 500 and list_price <= 1000
--500 aas 1000 hoorondoh uniig gargah
select * from sales.order_items
where discount between 0.1 and 0.2
--like iin talaar 'ka%' ka gaar ehelsen tugsgul n hamaagui,
select * from sales.customers
where first_name like 'ka%'
select * from sales.customers
where first_name like 'ka___'
select * from sales.customers
where first_name like 'ka__a'
select * from sales.customers
where first_name like '%ka'
-- in iin talaar ('259','1212','523') onooj haihad ashiglana
select * from sales.orders
where customer_id in (259,1212,523)
select * from sales.order_items
where list_price in(599.99,1212)

-- and iin talaar hed heden nuhtsul bielej baih yostoi 
select * from sales.customers
where state = 'ny' and zip_code = 14127
select * from sales.order_items
where discount = 0.05 and list_price = 599.99
-- or iin talaar ali neg nuhtsul bielej baih yostoi
-- not zuvhun null deer ashiglana
--empty gdg n zai ezelsen hooson, null n hooson datagui
select *from dbo.customers
where fax is not null
-- data insert
select * from dbo.customers
insert into dbo.customers (customerid, companyname, contactname, contacttitle, address, city,region, postalcode,country,phone,fax)
values (66966, 'google', 'tuguldur', 'data_analyst', '550 thomas', 'arlington', 'va', '22203', 'usa', '999-666-6666', null)
select * from dbo.customers
--ip address aa yavuul
-- update dbo.customers set contactname='uyangaa' where costumerid='1122u'
select * from dbo.customers
where customerid= '66966'


