-- ============================================
-- QUERY 1: Total Revenue Across Different Years
-- Business Question: How much total revenue did we earn in each year?
-- Tables: orders, orderdetails
-- Concepts: JOIN, GROUP BY, DATE functions
-- Finding: Revenue peaked in 2004
-- ============================================
SELECT
    YEAR(o.orderDate) AS year,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue
FROM orders o
JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY YEAR (o.orderDate)
ORDER BY year;