-- ============================================
-- QUERY 12: Customer Loyalty Analysis
-- Business Question: Which customers have placed more than 5 orders?
-- Tables: customers, orders
-- Concepts: JOIN, COUNT, GROUP BY, HAVING
-- Finding: Only 2 customers qualify as Gold tier (5+ orders)
-- ============================================
SELECT 
    c.customerName,
    COUNT(o.orderNumber) AS order_count
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
GROUP BY c.customerName
HAVING order_count > 5
ORDER BY order_count DESC;