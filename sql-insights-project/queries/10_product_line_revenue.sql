-- ============================================
-- QUERY 10: Product Line Revenue Analysis
-- Business Question: Which product line generates the most revenue? (normalized by product count)
-- Tables: productlines, products, orderdetails
-- Concepts: 3-table JOIN, COUNT DISTINCT, revenue per product
-- Finding: Classic Cars lead in both total and per-product revenue
-- ============================================
SELECT 
    pl.productLine,
    COUNT(DISTINCT p.productCode) AS total_products,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue,
    ROUND(SUM(od.quantityOrdered * od.priceEach) / 
    COUNT(DISTINCT p.productCode), 2) AS revenue_per_product
FROM productLines pl
JOIN products p ON pl.productLine = p.productLine
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY pl.productLine
ORDER BY revenue_per_product DESC;