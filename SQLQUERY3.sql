select * from [pizza_sales (1)]
select SUM(total_price) as Total_Revenue from [pizza_sales (1)]
select * from [pizza_sales (1)]
select SUM(total_price)/ COUNT(DISTINCT order_id) as Avg_order_value from [pizza_sales (1)]
select * from [pizza_sales (1)]
select SUM(quantity) as Total_pizza_sold  from [pizza_sales (1)]
select * from [pizza_sales (1)]
select COUNT(DISTINCT order_id) as Total_orders from [pizza_sales (1)]
select * from [pizza_sales (1)]
select CAST(CAST(SUM(quantity)as decimal(10,2)) / 
CAST(COUNT(DISTINCT order_id) as decimal(10,2)) as decimal(10,2))  as Avg_pizzas_per_order from [pizza_sales (1)]




select * from [pizza_sales (1)]
select DATENAME(DW, order_date) as order_day, COUNT(DISTINCT order_id) as Total_orders from [pizza_sales (1)]
GROUP BY DATENAME(DW, order_date)

select * from [pizza_sales (1)]
select DATENAME(MONTH, order_date) as Month_Name, COUNT(DISTINCT order_id) as Total_orders from [pizza_sales (1)]
GROUP BY DATENAME(MONTH, order_date)
ORDER BY Total_orders DESC

select * from [pizza_sales (1)]
select pizza_category,  CAST(SUM(total_price)  as decimal(10,2))as total_sales, CAST(SUM(total_price) * 100 / (select SUM(total_price) from [pizza_sales (1)] WHERE MONTH (order_date) = 1) as decimal(10,2)) as PCT_sales from [pizza_sales (1)]
WHERE MONTH (order_date) = 1
GROUP BY pizza_category

select * from [pizza_sales (1)]
select pizza_size,  CAST(SUM(total_price)  as decimal(10,2))as total_sales, CAST(SUM(total_price) * 100 / (select SUM(total_price) from [pizza_sales (1)] WHERE DATEPART(QUARTER, order_date) = 1) as decimal(10,2)) as PCT_sales from [pizza_sales (1)]
WHERE DATEPART ( QUARTER, order_date) = 1
GROUP BY pizza_size
ORDER BY PCT_sales DESC


select * from [pizza_sales (1)]
select  TOP 5 pizza_name, sum(total_price)  as Total_Revenue from [pizza_sales (1)]
GROUP BY pizza_name
ORDER BY Total_Revenue DESC

select * from [pizza_sales (1)]
select  TOP 5 pizza_name, COUNT(DISTINCT order_id)as Total_Orders from [pizza_sales (1)]
GROUP BY pizza_name
ORDER BY Total_Orders DESC


