-- ============================================
-- QUERY 15: Complete Customer Summary
-- Business Question: Give a full picture of every customer — orders, revenue, dates, and rank
-- Tables: customers, orders, orderdetails
-- Concepts: Multi-table JOIN, COUNT DISTINCT, MIN, MAX, RANK(), Window Functions
-- Finding: Comprehensive customer scorecard for CRM use
-- ============================================
SELECT
    c.customerName,
	COUNT(DISTINCT o.orderNumber) AS total_orders,
	SUM(od.quantityOrdered * od.priceEach) AS total_revenue,
	MIN(o.orderDate) AS first_order,
	MAX(o.orderDate) AS latest_order,
	RANK() OVER(ORDER BY SUM(od.quantityOrdered * od.priceEach) DESC) AS revenue_rank
FROM customers c
JOIN orders o 
    ON c.customerNumber = o.customerNumber       
JOIN orderdetails od 
    ON o.orderNumber = od.orderNumber
GROUP BY c.customerName;