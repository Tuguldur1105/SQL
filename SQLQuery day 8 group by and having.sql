select * from [production].[products]
select * from [production].[stocks]

select product_name from [production].[products] where product_id in
(select product_id from [production].[stocks] where quantity in 
(select top 10 quantity from [production].[stocks] where quantity in 
(select MAX (quantity) from [production].[stocks])))

select product_name from [production].[products]  where product_id in
(select product_id from [production].[stocks] where quantity = 0)

--jannette how many sales?
select * from sales.staffs
select * from sales.orders
select count (*) from sales.orders where staff_id=
(select staff_id from sales.staffs where first_name = 'mireya') 

--how many orders made 'Baldwin bikes' stores ?
select * from sales.orders
select * from sales.stores
select count (*) from sales.orders where store_id =
(select store_id from sales.stores where store_name='Baldwin Bikes')

--GROUP BY, ORDER BY

--store_id gaar n borluulaltiig negtgej harah uyed
select * from sales.orders
select count(*), store_id from sales.orders
group by store_id

--hamgiin ih zaragdsan udriig harah uyed
select count(*), order_date from sales.orders
group by order_date
order by 1 desc

--how many customers for each city?
select * from sales.customers
select count(*), city from sales.customers
group by city
order by 1 desc

--how many customers for each state?
select count(*), state from sales.customers
group by state
order by 1 desc

--how many customers for each zip_code?
select count(*), zip_code from sales.customers
group by zip_code
order by 1 desc

--how many female and male employee we have in dbo.employee table
select * from dbo.Employee
select count(*), gender from dbo.Employee
group by gender

--Having command n Group by ruugaa restrection hiine

--store_id gaar n borluulaltiig 200gaas ih ngaag n tooloh  uyed
select * from sales.orders
select count(*), store_id from sales.orders
group by store_id
having count(*) > 200

--how many customer for each state greater than 200 ?
select count(*), state from dbo.customer_info
group by state
having count(*) >200
order by 1 desc

--10 deesh costumertei citynuudiig haruul?
select * from dbo.customer_info
select count(*), city from dbo.customer_info
group by city
having count(*) >10

--list of employees from each estate with total salaries greater than 50000?
select * from dbo.Employee
select sum(Salary), statecode from dbo.Employee
group by StateCode
having sum(salary) > 50000

--show only records which have only more than 5 orders day?
select * from sales.orders
select count(*), order_date from sales.orders
group by order_date
having count(*) > 5

--calculate total salary for male emloyees in each state?
select * from dbo.Employee
select sum(salary), statecode from dbo.Employee
where gender ='m'
group by statecode
