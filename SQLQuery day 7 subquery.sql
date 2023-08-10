select * from production.customers
where zip_code = 90278 and email like '%gmail.com'
--result 2 

select * from sales.customers
where zip_code in (11553) and state in ('NY') and phone is NULL

select count (*) as model_year_2016 from production.products
where model_year=2016

select count(product_name) from production.products
where len(product_name)<=20

select * from production.products
where model_year between 2016 and 2017 and list_price between 379 and 600 

-- subquery 
select * from production.products
select * from sales.order_items
select * from sales.order_items where product_id 
in(select product_id from production.products where model_year = '2016')


select top 1 salary from dbo.Employee
where salary < (select max(salary) from dbo.Employee)
order by salary desc

select * from [dbo].[Employees_SubQ]
select * from [dbo].[Departments_SubQ]

select * from [dbo].[Employees_SubQ]
where department_id = 
(select department_id from [dbo].[Departments_SubQ] where department_name = 'hr')


select * from [dbo].[Employees_SubQ]
select * from [dbo].[Departments_SubQ]
select department_name from [dbo].[Departments_SubQ] where department_id = 
(select Employee_id from [dbo].[Employees_SubQ] where Employee_name = 'Carol')

--shoe me the mploeey name who is salary greater than bob?
select * from [dbo].[Employees_SubQ]
select * from [dbo].[Departments_SubQ]
select Employee_name from [dbo].[Employees_SubQ] where salary >(
select salary from [dbo].[Employees_SubQ] where Employee_name = 'bob')


--find employees who work in the same department as alice?
select * from [dbo].[Employees_SubQ]
select Employee_name from [dbo].[Employees_SubQ] where department_id =
(select department_id from [dbo].[Employees_SubQ] where employee_name ='alice')

--find employees whose department name contaning sales? 
select * from [dbo].[Employees_SubQ]
select * from [dbo].[Departments_SubQ]
select Employee_name from [dbo].[Employees_SubQ] where department_id=(
select department_id from [dbo].[Departments_SubQ] where department_name = 'sales')

--how to get find only orders who lives in ca and zip code 95008
select * from sales.orders
select * from sales.customers
select order_id from sales.orders where customer_id in (
select customer_id from sales.customers where state in ('ca') and zip_code in (95008))
	
--how to get product name that stock less than 10 pieces?
select* from production.products
select* from production.stocks
select product_name from production.products where product_id in (
select product_id from production.stocks where quantity < 10) 

-- hamgiin unetei baraanii une?
select max (list_price),min(list_price),avg(list_price) from production.products where product_id in (
select product_id from production.stocks where quantity < 10) 

select product_name from production.products where product_id in (
select product_id from production.stocks where quantity < 10) 
order by product_name desc
