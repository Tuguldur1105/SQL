select customer_id, first_name, last_name, phone, email,street, city, state,zip_code from sales.customers;
select order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id from sales.orders
select store_id, product_id, quantity from production.stocks;
select * from production.stocks;
select * from dbo.customers;
select order_id,customer_id,order_status,order_date,required_date,shipped_date,store_id,staff_id from reportingserver.sales.orders;
select customer_id, phone, email from sales.customers 
-- single comment

/* awidawokdapkdaplda */
select distinct 
select * from dbo.customers 
where country = 'mexico'
select customerid, companyname, contactname, address, country from dbo.customers
where country = 'usa'
select customerid, companyname, contactname, contacttitle 
from dbo.customers
where contacttitle = 'manager'
select customerid,ContactName ,address, city, postalcode
from dbo.customers
--where postalcode = '05023'
where city = 'arlington'
select customer_id,phone,street,state,city
from sales.customers
--where state = 'ny'
where city = 'buffalo'