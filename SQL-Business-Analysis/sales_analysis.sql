-- Revenue by Customer
SELECT customer_id,
       SUM(sales_amount) AS total_revenue
FROM sales
GROUP BY customer_id
ORDER BY total_revenue DESC;

-- Revenue by Product
SELECT product_id,
       SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC;
