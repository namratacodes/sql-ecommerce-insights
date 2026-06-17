-- ============================================
-- QUERY 5: Top 5 Revenue Generating Products
-- Business Question: Which products drive the most revenue?
-- Tables: products, orderdetails
-- Concepts: JOIN, SUM, COUNT, AVG, ORDER BY, LIMIT
-- Finding: 1992 Ferrari 360 Spider Red is #1 — driven by high volume
-- ============================================
SELECT 
    p.productName,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue,
    COUNT(od.orderNumber) AS times_ordered,
    SUM(od.quantityOrdered) AS total_units_sold,
    ROUND(SUM(od.quantityOrdered * od.priceEach) / 
    SUM(od.quantityOrdered), 2) AS avg_price_per_unit
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productName
ORDER BY total_revenue DESC
LIMIT 5;