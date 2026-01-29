here-- Sales Analysis Queries for Data Analyst Portfolio
-- Run sample_data.sql first, then these queries

-- 1. Total revenue by city
SELECT c.city, SUM(o.total_amount) as city_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city;

-- 2. Top 2 products by sales
SELECT p.product_name, SUM(o.quantity * p.price) as total_sales
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;

-- 3. Customer-wise total spending (with RANK)
SELECT c.customer_name, 
       SUM(o.total_amount) as total_spent,
       RANK() OVER (ORDER BY SUM(o.total_amount) DESC) as spending_rank
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
