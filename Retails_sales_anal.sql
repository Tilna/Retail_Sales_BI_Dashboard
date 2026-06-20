create database retail_prj;
use retail_prj;
select * from orders limit 10;
SHOW COLUMNS FROM orders;

## Total Sales
select round(sum(Sales),2) as total_sales from orders;

##total profit
select round(sum(Profit),2) as total_profit from orders;

##sales by region
select Region, sum(Sales) as revenue from orders
group by Region
order by revenue desc;

##profit by category
select category, sum(profit) as total_profit from orders
group by category
order by total_profit desc;

##top 10 products
select `product Name`,sum(sales) as total_sales from orders
group by `product name` 
order by total_sales desc
limit 10;

## monthly sales trend
SELECT DATE_FORMAT(str_to_date(`Order Date`, '%m/%d/%Y'),
	   '%Y-%m') AS month,
       SUM(Sales) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

##top subcategories
select `sub-category`,sum(profit) as total_profit from orders
group by `sub-category`
order by total_profit desc;

##discount impact
select discount,avg(profit) as avg_profit from orders
group by discount
order by discount;

