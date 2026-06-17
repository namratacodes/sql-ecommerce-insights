-- ============================================
-- QUERY 7: Product Revenue Rankings
-- Business Question: Where does each product rank by revenue?
-- Tables: products, orderdetails
-- Concepts: RANK(), Window Functions, JOIN
-- Finding: Classic car models dominate top rankings
-- ============================================
SELECT 
    p.productName,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue,
    RANK() OVER(ORDER BY SUM(od.quantityOrdered * od.priceEach) DESC) AS revenue_rank
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productName
ORDER BY revenue_rank;