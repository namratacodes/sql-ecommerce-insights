-- ============================================
-- QUERY 4: Monthly Revenue Trend
-- Business Question: What are our monthly revenue patterns across all years?
-- Tables: orders, orderdetails
-- Concepts: MONTH(), YEAR(), GROUP BY
-- Finding: November consistently peaks every year (seasonality)
-- ============================================
SELECT
    YEAR(o.orderDate) AS year,
    MONTH(o.orderDate) AS month,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue
FROM orders o 
JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY YEAR(o.orderDate), MONTH(o.orderDate)
ORDER BY year, month;