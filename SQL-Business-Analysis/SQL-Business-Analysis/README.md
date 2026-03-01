-- Total Revenue by Customer
SELECT customer_id,
       COUNT(*) AS total_orders,
       SUM(sales_amount) AS total_revenue
FROM sales
GROUP BY customer_id
ORDER BY total_revenue DESC;

-- Top 5 Products by Revenue
SELECT product_id,
       SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 5;

-- Average Order Value
SELECT ROUND(AVG(sales_amount), 2) AS average_order_value
FROM sales;
