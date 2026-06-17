-- ============================================
-- QUERY 6: Order Revenue % Contribution To Total
-- Business Question: What percentage does each order contribute to total revenue?
-- Tables: orderdetails
-- Concepts: Window Function, SUM OVER(), ROUND
-- Finding: No single order dominates — revenue is well distributed
-- ============================================
SELECT 
    orderNumber,
    SUM(quantityOrdered * priceEach) AS order_revenue,
    SUM(SUM(quantityOrdered * priceEach)) OVER() AS total_revenue,
    ROUND(SUM(quantityOrdered * priceEach) * 100.0 / 
    SUM(SUM(quantityOrdered * priceEach)) OVER(), 2) AS revenue_pct
FROM orderdetails
GROUP BY orderNumber
ORDER BY order_revenue DESC
LIMIT 10;