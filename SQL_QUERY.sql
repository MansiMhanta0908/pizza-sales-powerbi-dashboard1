SELECT * FROM pizza_sales
select SUM(total_price) as Total_Revenue from pizza_sales
SELECT SUM(total_price)/ COUNT(distinct order_id) as Avg_Order_value from pizza_sales
select SUM(quantity) as Total_pizza from pizza_sales
select COUNT(distinct order_id) as Orders from pizza_sales
select cast(cast(SUM(quantity) as decimal(10,2)) /
cast(COUNT(distinct order_id) as decimal(10,2)) as decimal(10,2)) as Avg_pizza_per_order from pizza_sales

select DATENAME(dw, order_date) as order_day, COUNT(distinct order_id) as total_orders from pizza_sales
group by DATENAME(dw, order_date)

SELECT	 DATENAME(month,order_date) as order_month, COUNT(distinct order_id) as total_monthly_orderd  from pizza_sales
group by DATENAME(month, order_date)

select pizza_size, sum(total_price) as total_sales, sum(total_price) * 100/ (select SUM(total_price) from pizza_sales where DATENAME(month, order_date)= 'January') as total_sales_per_category
from pizza_sales
group by pizza_size

select top 5 pizza_name, sum(total_price) as total_sales from pizza_sales
group by pizza_name
order by total_sales 